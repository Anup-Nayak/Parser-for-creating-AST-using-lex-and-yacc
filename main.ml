let print_results results =
  let rec print_with_indent indent_level = function
    | [] -> ()
    | "indentForward" :: rest ->
        print_with_indent (indent_level + 2) rest
    | "indentBackwards" :: rest ->
        print_with_indent (indent_level - 2) rest
    | str :: rest ->
        Printf.printf "%*s%s\n" (max 0 (indent_level * 2)) "" str;
        print_with_indent indent_level rest
  in
  print_with_indent 0 results

let main =
  let channel = open_in "test.txt" in
  try
    let lexbuf = Lexing.from_channel channel in
    let results = Parser.main Lexer.token lexbuf in
    close_in channel;  (* Close the file after reading *)
    print_results results
  with
  | Sys_error err -> 
      Printf.printf "Error: %s\n" err
