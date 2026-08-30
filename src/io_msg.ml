(*
  licenzio - A CLI tool for adding license files to projects
  Khalid B. | @khalidbelk, 2026
  File: src/io_msg.ml
*)

module M = Metadata

let print_version () =
  let msg =
    Printf.sprintf "%s v%s\n\n%s\n\nRepository URL: %s" M.title M.version
      M.description M.repo_url
  in
  print_endline msg

let print_use_help () =
  print_endline "Use '-h' or '--help' for usage information."
