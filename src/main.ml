(*
  licenzio - A CLI tool for adding license files to projects
  Khalid B. | @khalidbelk, 2026
  File: src/main.ml
*)

open License

let handle_args args =
  match args with
  | [_ ; license] ->
      create_license_file license
  | _ -> failwith "Wrong arguments"

let main () =
  (* print_endline "Hello, World!"; *)
  let args = Array.to_list (Sys.argv) in
  handle_args args

let _ =
  main ()
