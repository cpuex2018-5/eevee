open Asm

external gethi : float -> int32 = "gethi"
external getlo : float -> int32 = "getlo"

let stackset : S.t ref = ref S.empty (* Set of variables already 'Saved' (caml2html: emit_stackset) *)
let stackmap : Id.t list ref = ref [] (* Positions of variables in the stack which are already 'Saved' (caml2html: emit_stackmap) *)

let print_stackmap () =
  print_endline ("stack: " ^ (String.concat " " !stackmap))

let save x =
  stackset := S.add x !stackset;
  if not (List.mem x !stackmap) then
    stackmap := !stackmap @ [x]
let savef x =
  (* TODO: change double-word floating point to single-word floating point *)
  stackset := S.add x !stackset;
  if not (List.mem x !stackmap) then
    (let pad =
       if List.length !stackmap mod 2 = 0 then [] else [Id.gentmp Type.Int] in
     stackmap := !stackmap @ pad @ [x; x])
let locate x =
  let rec loc = function
    | [] -> []
    | y :: zs when x = y -> 0 :: List.map succ (loc zs)
    | y :: zs -> List.map succ (loc zs) in
  loc !stackmap
let offset x = 4 * List.hd (locate x)
let stacksize () = (List.length !stackmap + 1) * 4

let reg r =
  if is_reg r
  then String.sub r 1 (String.length r - 1)
  else r

(*
let load_label r label =
  let r' = reg r in
  Printf.sprintf
    "\tlis\t%s, ha16(%s)\n\taddi\t%s, %s, lo16(%s)\n"
    r' label r' r' label
*)

(* Shuffle registers so that the old content will not be lost *)
let rec shuffle sw xys =
  (* remove identical moves *)
  let xys = List.filter (fun (x, y) -> x <> y) xys in
  (* find acyclic moves *)
  match List.partition (fun (_, y) -> List.mem_assoc y xys) xys with
  | [], [] -> []
  | (x, y) :: xys, [] -> (* no acyclic moves; resolve a cyclic move *)
    (* there are a tuple (y, b) in old xys *)
    (y, sw) :: (x, y) :: shuffle sw (List.map
                                       (function
                                         | (y', z) when y = y' -> (sw, z)
                                         | yz -> yz)
                                       xys)
  | xys, acyc -> acyc @ shuffle sw xys

let retlabel = ref ""

type dest = Tail | NonTail of Id.t (* 末尾かどうかを表すデータ型 (caml2html: emit_dest) *)
let rec g buf = function (* 命令列のアセンブリ生成 (caml2html: emit_g) *)
  | dest, Ans(exp) -> g' buf (dest, exp)
  | dest, Let((x, t), exp, e) ->
    g' buf (NonTail(x), exp);
    g buf (dest, e)
and g' buf e =
  (* 末尾でなかったら計算結果をdestにセット (caml2html: emit_nontail) *)
  print_stackmap ();
  match e with
  | NonTail(_), Nop -> ()
  | NonTail(x), Li(i) when -32768 <= i && i < 32768 -> Printf.bprintf buf "\tli\t%s, %d\n" (reg x) i
  | NonTail(x), Li(i) ->
    let n = i lsr 12 in
    let m = i lxor (n lsl 12) in
    let r = reg x in
    Printf.bprintf buf "\tlui\t%s, %d\n" r n;
    Printf.bprintf buf "\tori\t%s, %s, %d\n" r r m
  | NonTail(x), FLi(Id.L(l)) ->
    Printf.bprintf buf "\tla\t%s, %s\n" (reg reg_tmp) l;
    Printf.bprintf buf "\tflw\t%s, 0(%s)\n" (reg x) (reg reg_tmp)
  | NonTail(x), SetL(Id.L(y)) ->
    Printf.bprintf buf "\tla\t%s, %s\n" (reg x) y
  | NonTail(x), Mv(y) when x = y -> ()
  | NonTail(x), Mv(y) -> Printf.bprintf buf "\tmv\t%s, %s\n" (reg x) (reg y)
  | NonTail(x), Neg(y) -> Printf.bprintf buf "\tneg\t%s, %s\n" (reg x) (reg y)
  | NonTail(x), Add(y, V(z)) -> Printf.bprintf buf "\tadd\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | NonTail(x), Add(y, C(z)) -> Printf.bprintf buf "\taddi\t%s, %s, %d\n" (reg x) (reg y) z
  | NonTail(x), Sub(y, V(z)) -> Printf.bprintf buf "\tsub\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | NonTail(x), Sub(y, C(z)) -> Printf.bprintf buf "\taddi\t%s, %s, %d\n" (reg x) (reg y) (-1 * z)
  | NonTail(x), Slw(y, V(z)) -> Printf.bprintf buf "\tsll\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | NonTail(x), Slw(y, C(z)) -> Printf.bprintf buf "\tslli\t%s, %s, %d\n" (reg x) (reg y) z
  | NonTail(x), Lwz(y, V(z)) ->
    (* TODO: asml.ml, virtual.mlを変更してここが1命令になるようにする *)
    Printf.bprintf buf "\tadd\t%s, %s, %s\n" (reg reg_tmp) (reg y) (reg z);
    Printf.bprintf buf "\tlw\t%s, 0(%s)\n" (reg x) (reg reg_tmp)
  | NonTail(x), Lwz(y, C(z)) -> Printf.bprintf buf "\tlw\t%s, %d(%s)\n" (reg x) z (reg y)
  | NonTail(_), Stw(x, y, V(z)) ->
    Printf.bprintf buf "\tadd\t%s, %s, %s\n"(reg reg_tmp) (reg y) (reg z);
    Printf.bprintf buf "\tsw\t%s, 0(%s)\n" (reg x) (reg reg_tmp)
  | NonTail(_), Stw(x, y, C(z)) -> Printf.bprintf buf "\tsw\t%s, %d(%s)\n" (reg x) z (reg y)
  | NonTail(x), FMv(y) when x = y -> ()
  | NonTail(x), FMv(y) -> Printf.bprintf buf "\tfmv.s\t%s, %s\n" (reg x) (reg y)
  | NonTail(x), FNeg(y) -> Printf.bprintf buf "\tfneg.s\t%s, %s\n" (reg x) (reg y)
  | NonTail(x), FAdd(y, z) -> Printf.bprintf buf "\tfadd.s\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | NonTail(x), FSub(y, z) -> Printf.bprintf buf "\tfsub.s\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | NonTail(x), FMul(y, z) -> Printf.bprintf buf "\tfmul.s\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | NonTail(x), FDiv(y, z) -> Printf.bprintf buf "\tfdiv.s\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | NonTail(x), Lfd(y, V(z)) ->
    Printf.bprintf buf "\tadd\t%s, %s, %s\n" (reg reg_tmp) (reg y) (reg z);
    Printf.bprintf buf "\tflw\t%s, 0(%s)\n" (reg x) (reg reg_tmp)
  | NonTail(x), Lfd(y, C(z)) -> Printf.bprintf buf "\tflw\t%s, %d(%s)\n" (reg x) z (reg y)
  | NonTail(_), Stfd(x, y, V(z)) ->
    Printf.bprintf buf "\tadd\t%s, %s, %s\n" (reg reg_tmp) (reg y) (reg z);
    Printf.bprintf buf "\tfsw\t%s, 0(%s)\n" (reg x) (reg reg_tmp)
  | NonTail(_), Stfd(x, y, C(z)) -> Printf.bprintf buf "\tfsw\t%s, %d(%s)\n" (reg x) z (reg y)
  | NonTail(_), Comment(s) -> Printf.bprintf buf "#\t%s\n" s
  (* 退避の仮想命令の実装 (caml2html: emit_save) *)
  | NonTail(_), Save(x, y) when List.mem x allregs && not (S.mem y !stackset) ->
    save y;
    Printf.bprintf buf "\tsw\t%s, %d(%s)\n" (reg x) (offset y) (reg reg_sp)
  | NonTail(_), Save(x, y) when List.mem x allfregs && not (S.mem y !stackset) ->
    savef y;
    Printf.bprintf buf "\tfsw\t%s, %d(%s)\n" (reg x) (offset y) (reg reg_sp)
  | NonTail(_), Save(x, y) -> assert (S.mem y !stackset); ()
  (* 復帰の仮想命令の実装 (caml2html: emit_restore) *)
  | NonTail(x), Restore(y) when List.mem x allregs ->
    Printf.bprintf buf "\tlw\t%s, %d(%s)\n" (reg x) (offset y) (reg reg_sp)
  | NonTail(x), Restore(y) ->
    assert (List.mem x allfregs);
    Printf.bprintf buf "\tflw\t%s, %d(%s)\n" (reg x) (offset y) (reg reg_sp)
  (* 末尾だったら計算結果を%a0か%fa0にセットしてリターン (caml2html: emit_tailret) *)
  | Tail, (Nop | Stw _ | Stfd _ | Comment _ | Save _ as exp) ->
    g' buf (NonTail(Id.gentmp Type.Unit), exp);
    Printf.bprintf buf "\tj\t%s\n" !retlabel;
  | Tail, (Li _ | SetL _ | Mv _ | Neg _ | Add _ | Sub _ | Slw _ | Lwz _ as exp) ->
    g' buf (NonTail(regs.(0)), exp);
    Printf.bprintf buf "\tj\t%s\n" !retlabel;
  | Tail, (FLi _ | FMv _ | FNeg _ | FAdd _ | FSub _ | FMul _ | FDiv _ | Lfd _ as exp) ->
    g' buf (NonTail(fregs.(0)), exp);
    Printf.bprintf buf "\tj\t%s\n" !retlabel;
  | Tail, (Restore(x) as exp) ->
    (match locate x with
     | [i] -> g' buf (NonTail(regs.(0)), exp)
     | [i; j] when i + 1 = j -> g' buf (NonTail(fregs.(0)), exp)
     | _ -> assert false);
    Printf.bprintf buf "\tj\t%s\n" !retlabel;

    (* IF内がfalseの場合にjump *)
    (* TODO: 比較するものの一方が0のときは一命令減らせる *)
  | Tail, IfEq(x, V(y), e1, e2) ->
    g'_tail_if buf x y e1 e2 "beq" "bne"
  | Tail, IfEq(x, C(y), e1, e2) ->
    (match y with
     | 0 ->
       g'_tail_if buf x "zero" e1 e2 "beq" "bne"
     | _ ->
       Printf.bprintf buf "\tli\t%s, %d\n" (reg reg_tmp) y;
       g'_tail_if buf x reg_tmp e1 e2 "beq" "bne")
  | Tail, IfLE(x, V(y), e1, e2) ->
    g'_tail_if buf x y e1 e2 "ble" "bgt"
  | Tail, IfLE(x, C(y), e1, e2) ->
    (match y with
     | 0 ->
       g'_tail_if buf x "zero" e1 e2 "ble" "bgt"
     | _ -> 
       Printf.bprintf buf "\tli\t%s, %d\n" (reg reg_tmp) y;
       g'_tail_if buf x reg_tmp e1 e2 "ble" "bgt")
  | Tail, IfGE(x, V(y), e1, e2) ->
    g'_tail_if buf x y e1 e2 "bge" "blt"
  | Tail, IfGE(x, C(y), e1, e2) ->
    (match y with
     | 0 ->
       g'_tail_if buf x "zero" e1 e2 "bge" "blt"
     | _ ->
       Printf.bprintf buf "\tli\t%s, %d\n" (reg reg_tmp) y;
       g'_tail_if buf x reg_tmp e1 e2 "bge" "blt")
  | Tail, IfFEq(x, y, e1, e2) ->
    (* TODO: Floating用に直す *)
    (* Store the comparison result in reg_tmp (integer register!) *)
    Printf.bprintf buf "\tfeq.s\t%s, %s, %s\n" reg_tmp x y;
    (* x = y -> reg_tmpが1 -> beq reg_tmp zero で分岐しない *)
    g'_tail_if buf reg_tmp "zero" e1 e2 "bne" "beq"
  | Tail, IfFLE(x, y, e1, e2) ->
    Printf.bprintf buf "\tfle.s\t%s, %s, %s\n" reg_tmp x y;
    (* x <= y -> reg_tmpが1 -> beq reg_tmp zero で分岐しない *)
    g'_tail_if buf reg_tmp "zero" e1 e2 "bne" "beq"
  | NonTail(z), IfEq(x, V(y), e1, e2) ->
    g'_non_tail_if buf (NonTail(z)) x y e1 e2 "beq" "bne"
  | NonTail(z), IfEq(x, C(y), e1, e2) ->
    (match y with
     | 0 ->
       g'_non_tail_if buf (NonTail(z)) x "zero" e1 e2 "beq" "bne"
     | _ ->
       Printf.bprintf buf "\tli\t%s, %d\n" (reg reg_tmp) y;
       g'_non_tail_if buf (NonTail(z)) x reg_tmp e1 e2 "beq" "bne")
  | NonTail(z), IfLE(x, V(y), e1, e2) ->
    g'_non_tail_if buf (NonTail(z)) x y e1 e2 "ble" "bgt"
  | NonTail(z), IfLE(x, C(y), e1, e2) ->
    (match y with
     | 0 ->
       g'_non_tail_if buf (NonTail(z)) x "zero" e1 e2 "ble" "bgt"
     | _ ->
       Printf.bprintf buf "\tli\t%s, %d\n" (reg reg_tmp) y;
       g'_non_tail_if buf (NonTail(z)) x reg_tmp e1 e2 "ble" "bgt")
  | NonTail(z), IfGE(x, V(y), e1, e2) ->
    g'_non_tail_if buf (NonTail(z)) x y e1 e2 "bge" "blt"
  | NonTail(z), IfGE(x, C(y), e1, e2) ->
    (match y with
     | 0 ->
       g'_non_tail_if buf (NonTail(z)) x "zero" e1 e2 "bge" "blt"
     | _ ->
       Printf.bprintf buf "\tli\t%s, %d\n" (reg reg_tmp) y;
       g'_non_tail_if buf (NonTail(z)) x reg_tmp e1 e2 "bge" "blt")
  | NonTail(z), IfFEq(x, y, e1, e2) ->
    Printf.bprintf buf "\tfeq.s\t%s, %s, %s\n" reg_tmp x y;
    g'_non_tail_if buf (NonTail(z)) reg_tmp "zero" e1 e2 "bne" "beq"
  | NonTail(z), IfFLE(x, y, e1, e2) ->
    Printf.bprintf buf "\tfle.s\t%s, %s, %s\n" reg_tmp x y;
    g'_non_tail_if buf (NonTail(z)) reg_tmp "zero" e1 e2 "bne" "beq"

  (* INFO: caller-save regs: ra, t*, a* / callee-save regs: sp, fp, s* *)
  | Tail, CallCls(f, iargs, fargs) ->
    (* TODO: tレジスタから使うようにする(?) *)
    g'_args buf [(f, reg_cl)] iargs fargs;
    Printf.bprintf buf "\tlw\tra, 0(%s)\n" (reg reg_cl);
    Printf.bprintf buf "\tjr\tra\n";
    Printf.bprintf buf "\tj\t%s\n" !retlabel
  | Tail, CallDir(Id.L(f), iargs, fargs) ->
    g'_args buf [] iargs fargs;
    Printf.bprintf buf "\tcall\t%s\n" f;
    Printf.bprintf buf "\tj\t%s\n" !retlabel
  | NonTail(a), CallCls(f, iargs, fargs) ->
    g'_args buf [(f, reg_cl)] iargs fargs;
    Printf.bprintf buf "\tlw\tra, 0(%s)\n" (reg reg_cl); (* set closure address to %ra *)
    Printf.bprintf buf "\tjr\tra\n";
    if List.mem a allregs && a <> regs.(0) then
      Printf.bprintf buf "\tmv\t%s, %s\n" (reg a) (reg regs.(0))
    else if List.mem a allfregs && a <> fregs.(0) then
      Printf.bprintf buf "\tfmv.s\t%s, %s\n" (reg a) (reg fregs.(0));
  | (NonTail(a), CallDir(Id.L(f), iargs, fargs)) ->
    g'_args buf [] iargs fargs;
    Printf.bprintf buf "\tcall\t%s\n" f;
    if List.mem a allregs && a <> regs.(0) then
      Printf.bprintf buf "\tmv\t%s, %s\n" (reg a) (reg regs.(0))
    else if List.mem a allfregs && a <> fregs.(0) then
      Printf.bprintf buf "\tfmv.s\t%s, %s\n" (reg a) (reg fregs.(0));
and g'_tail_if buf rs1 rs2 e1 e2 b bn = (* bはラベルに使うだけで命令には使わない *)
  let b_else = Id.genid (b ^ "_else") in
  Printf.bprintf buf "\t%s\t%s, %s, %s\n" bn (reg rs1) (reg rs2) b_else;
  let stackset_back = !stackset in
  g buf (Tail, e1); (* if内がtrueの場合 = jumpしなかった場合 *)
  Printf.bprintf buf "%s:\n" b_else;
  stackset := stackset_back;
  g buf (Tail, e2);
and g'_non_tail_if buf dest rs1 rs2 e1 e2 b bn =
  let b_else = Id.genid (b ^ "_else") in
  let b_cont = Id.genid (b ^ "_cont") in
  Printf.bprintf buf "\t%s\t%s, %s, %s\n" bn rs1 rs2 b_else;
  let stackset_back = !stackset in
  g buf (dest, e1);
  let stackset1 = !stackset in
  Printf.bprintf buf "\tb\t%s\n" b_cont;
  Printf.bprintf buf "%s:\n" b_else;
  stackset := stackset_back;
  g buf (dest, e2);
  Printf.bprintf buf "%s:\n" b_cont;
  let stackset2 = !stackset in
  stackset := S.inter stackset1 stackset2
and g'_args buf x_reg_cl int_args float_args =
  let (_, yrs) =
    List.fold_left
      (fun (i, yrs) y -> (i + 1, (y, regs.(i)) :: yrs))
      (0, x_reg_cl) (* <- initial value *)
      int_args in
  List.iter
    (fun (y, r) -> Printf.bprintf buf "\tmv\t%s, %s\n" (reg r) (reg y))
    (shuffle reg_sw yrs);
  let (_, zfrs) =
    List.fold_left
      (fun (d, zfrs) z -> (d + 1, (z, fregs.(d)) :: zfrs))
      (0, [])
      float_args in
  List.iter
    (fun (z, fr) -> Printf.bprintf buf "\tfmv.s\t%s, %s\n" (reg fr) (reg z))
    (shuffle reg_fsw zfrs)

let h oc { name = Id.L(x); args = _; fargs = _; body = e; ret = _ } =
  Printf.fprintf oc "%s:\n" x;
  stackset := S.empty;
  stackmap := [];
  let buf = Buffer.create 128 in
  retlabel := x ^ "_ret";
  g buf (Tail, e);
  let ss = stacksize () + 8 in
  Printf.fprintf oc "\taddi\tsp, sp, %d\n" (-1 * ss);
  Printf.fprintf oc "\tsw\tra, %d(sp)\n" (ss - 4);
  Printf.fprintf oc "\tsw\tfp, %d(sp)\n" (ss - 8);
  Printf.fprintf oc "\taddi\tfp, sp, %d\n" ss;
  Buffer.output_buffer oc buf;
  Printf.fprintf oc "%s_ret:\n" x;
  Printf.fprintf oc "\tlw\tra, %d(sp)\n" (ss - 4);
  Printf.fprintf oc "\tlw\tfp, %d(sp)\n" (ss - 8);
  Printf.fprintf oc "\taddi\tsp, sp, %d\n" ss;
  Printf.fprintf oc "\tjr\tra\n"

let f oc (Prog(data, fundefs, e)) =
  Format.eprintf "generating assembly...@.";
  if data <> [] then
    (Printf.fprintf oc "\t.data\n\t.literal8\n";
     List.iter
       (fun (Id.L(x), d) ->
          Printf.fprintf oc "\t.align 3\n";
          Printf.fprintf oc "%s:\t # %f\n" x d;
          Printf.fprintf oc "\t.long\t%ld\n" (gethi d);
          Printf.fprintf oc "\t.long\t%ld\n" (getlo d))
       data);
  Printf.fprintf oc "\t.text\n";
  Printf.fprintf oc "\t.globl _min_caml_start\n";
  Printf.fprintf oc "\t.align 2\n";
  Printf.fprintf oc "_min_caml_start: # main entry point\n";
  Printf.fprintf oc "\taddi\tsp, sp, -8\n";
  (* Printf.fprintf oc "\tsw\tra, 4(sp)\n"; *) (* returnしないので *)
  Printf.fprintf oc "\tsw\tfp, 0(sp)\n";
  Printf.fprintf oc "\taddi\tfp, sp, 8\n";
  Printf.fprintf oc "#\tmain program starts\n";
  stackset := S.empty;
  stackmap := [];
  let buf = Buffer.create 128 in
  g buf (NonTail("_R_0"), e);
  Buffer.output_buffer oc buf;
  Printf.fprintf oc "#\tmain program ends\n";
  (* Printf.fprintf oc "\tli\ta5, 0\n";
     Printf.fprintf oc "\tmv\ta0, a5\n"; *) (* return 0はいらないはず？ *)
  Printf.fprintf oc "\tlw\tra, 4(sp)\n";
  Printf.fprintf oc "\tlw\tfp, 0(sp)\n";
  Printf.fprintf oc "\taddi\tsp, sp, 8\n";
  Printf.fprintf oc "\tj\tend\n";
  List.iter (fun fundef -> h oc fundef) fundefs;
  Printf.fprintf oc "end:\n";
  Printf.fprintf oc "\tj\tend\n";
