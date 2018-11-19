let limit = ref 1000

let rec iter n e = (* optimization (caml2html: main_iter) *)
  Format.eprintf "iteration %d@." n;
  if n = 0 then e else (
    (* print_endline "------------------------------";
       KNormal.print_t e; *)
    let e' = Common.f e in
    (* print_endline "-------------After Common.f-----------------";
       KNormal.print_t e'; *)
    let e' = Beta.f e' in
    (* print_endline "---------------After Beta.f-----------------";
       KNormal.print_t e'; *)
    let e' = Assoc.f e' in
    (* print_endline "--------------After Assoc.f-----------------";
       KNormal.print_t e'; *)
    let e' = Inline.f e' in
    (* print_endline "-------------After Inline.f-----------------";
       KNormal.print_t e'; *)
    let e' = ConstFold.f e' in
    (* print_endline "-------------After ConstFold.f--------------";
       KNormal.print_t e'; *)
    let e' = Elim.f e' in
    (* print_endline "---------------After Elim.f-----------------";
       KNormal.print_t e'; *)
    if e = e' then e else
      iter (n - 1) e'
  )

let lexbuf outchan l = (* compile the buffer and put it to outchan (caml2html: main_lexbuf) *)
  Id.counter := 0;
  Typing.extenv := M.empty;
  let e = Parser.exp Lexer.token l in
  let e = Typing.f e in
  let e = KNormal.f e in
  KNormal.print_t e;
  print_endline "-----------After KNormal.f--------------";
  let e = Alpha.f e in
  let e = iter !limit e in
  (* let e = Lift.f e in
     KNormal.print_t e; *)
  let e = Closure.f e in
  print_endline "-----------After Closure.f-----------------";
  (* Closure.print_prog e; *)
  (* let e = TupleOpt.f e in *)
  (* print_endline "-----------After TupleOpt.f-----------------"; *)
  (* Closure.print_prog e; *)
  let e = Virtual.f e in
  let e = Simm.f e in
  let e = RegAlloc.f e in
  Emit.f outchan e

let string s = lexbuf stdout (Lexing.from_string s) (* compile a string and put it to stdout (caml2html: main_string) *)

let file f = (* compile a file and put it to stdout (caml2html: main_file) *)
  let ofilename = (String.sub f 0 ((String.length f) - 3)) ^ ".s" in
  let inchan = open_in f in
  let outchan = open_out ofilename in
  try
    lexbuf outchan (Lexing.from_channel inchan);
    close_in inchan;
    close_out outchan;
  with e -> (close_in inchan; close_out outchan; raise e)

let () = (* entry point for compiler (caml2html: main_entry) *)
  let files = ref [] in
  Arg.parse
    [("-inline", Arg.Int(fun i -> Inline.threshold := i), "maximum size of functions inlined");
     ("-iter", Arg.Int(fun i -> limit := i), "maximum number of optimizations iterated")]
    (fun s -> files := !files @ [s])
    ("Mitou Min-Caml Compiler (C) Eijiro Sumii\n" ^
     Printf.sprintf "usage: %s [-inline m] [-iter n] ...filenames without \".ml\"..." Sys.argv.(0));
  List.iter
    (fun f -> ignore (file f))
    !files
