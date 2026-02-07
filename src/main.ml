(*
  licenzio - A CLI tool for adding license files to projects
  Khalid B. | @khalidbelk, 2026
  File: src/main.ml
*)

open License
open Io_msg

module U = Utils

let handle_args args =
  match args with
  | [_; "-v"] ->
      print_version ()
  | [_; "--version"] ->
      print_version ()
  | [_; "-h"] ->
      print_endline U.help; exit 0
  | [_; "--help"] ->
      print_endline U.help; exit 0
  | [_; license] ->
    create_license_file license
  | _ ->
    print_string "Wrong arguments. "; print_use_help ();
    exit 1

let main () =
  let args = Array.to_list (Sys.argv) in
  handle_args args

let _ =
  main ()
