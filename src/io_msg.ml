(*
  licenzio - A CLI tool for adding license files to projects
  Khalid B. | @khalidbelk, 2026
  File: src/io_msg.ml
*)

let print_version () =
  let version = "0.0.1" in
  let title = "Licenzio" in
  let description = "A CLI tool for adding license files to projects" in
  let repo_url = "github.com/khalidbelk/licenzio"
  in
    print_endline (title ^ " v" ^ version ^ "\n" ^ description ^ "\n" ^ repo_url)

let print_use_help () =
  print_endline "Use '-h' or '--help' for usage information."
