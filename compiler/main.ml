let limit = ref 1000

let rec iter n e = (* optimization (caml2html: main_iter) *)
  Format.eprintf "iteration %d@." n;
  if n = 0 then e else
    (
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
        iter (n - 1) e')

let lexbuf outchan l = (* compile the buffer and put it to outchan (caml2html: main_lexbuf) *)
  Id.counter := 0;
  Typing.extenv := M.empty;
  let e0 = Parser.exp Lexer.token l in
  let e1 = Typing.f e0 in
  let e2 = KNormal.f e1 in
  print_endline "-----------After KNormal.f--------------";
  KNormal.print_t e2;
  let e3 = Lift.f e2 in
  let e4 = Alpha.f e3 in
  let e5 = iter !limit e4 in
  let e6 = Closure.f e5 in
  print_endline "-----------Closure.prog-----------------";
  Closure.print_prog e6;
  let e6 = TupleOpt.f e6 in
  print_endline "-----------After TupleOpt---------------";
  Closure.print_prog e6;
  let e7 = Virtual.f e6 in
  let e8 = Simm.f e7 in
  let e9 = RegAlloc.f e8 in
  Emit.f outchan e9

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
