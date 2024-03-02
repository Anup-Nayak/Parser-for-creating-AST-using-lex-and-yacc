let print_results results =
  List.iter (fun result -> Printf.printf "%s\n" result) results

let main =
  let lexbuf = Lexing.from_channel stdin in
  let results = Parser.main Lexer.token lexbuf in
  print_results results
