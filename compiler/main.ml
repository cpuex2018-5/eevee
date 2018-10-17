let limit = ref 1000

let rec iter n e = (* optimization (caml2html: main_iter) *)
  Format.eprintf "iteration %d@." n;
  if n = 0 then e else
    (* [WEEK2 Q2] Common subexpression elimination *)
    (print_endline "-------------------------Before Common Subexpression Elimination-------------------------";
     KNormal.print_t e;
     let e' = Common.f e in
     print_endline "-------------------------After Common Subexpression Elimination--------------------------";
     KNormal.print_t e';
     let e' = Elim.f (ConstFold.f (Inline.f (Assoc.f (Beta.f e')))) in
     if e = e' then e else
       iter (n - 1) e')

let lexbuf outchan l = (* compile the buffer and put it to outchan (caml2html: main_lexbuf) *)
  Id.counter := 0;
  Typing.extenv := M.empty;
  Emit.f outchan
    (RegAlloc.f
       (Simm.f
          (Virtual.f
             (Closure.f
                (iter !limit
                   (Alpha.f
                      (* [WEEK1 Q1] add pretty-print for KNormal.t and Syntax.t *)
                      (let kexp =
                         (KNormal.f
                            (Typing.f
                               (let exp = (Parser.exp Lexer.token l) in
                                (* Syntax.print_t exp; *) exp))) in
                       (* print_endline "------------------------------------------------------------"; *)
                       KNormal.print_t kexp;
                       print_endline "------------------------------------------------------------";
                       kexp)))))))

let string s = lexbuf stdout (Lexing.from_string s) (* compile a string and put it to stdout (caml2html: main_string) *)

let file f = (* compile a file and put it to stdout (caml2html: main_file) *)
  let inchan = open_in (f ^ ".ml") in
  let outchan = open_out (f ^ ".s") in
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
