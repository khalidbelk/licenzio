(*
  licenzio - A CLI tool for adding license files to projects
  Khalid B. | @khalidbelk, 2026
  File: src/utils.ml
*)

module L = License

let formatted_flags_list =
  let format elem =
    let cmd = L.cmd_of_license elem in
    let formatted_cmd =
      if String.length cmd <= 7 then cmd ^ "\t"
      else cmd
    in
    "\t" ^ formatted_cmd ^ " : " ^ L.title_of_license elem ^ "\n"
  in
    let formatted = L.all_licenses |> List.map format
    in formatted

let help =
  "USAGE: ./licenzio <license_name> [OPTIONS]\n\n"
  ^ "license_name :" ^ "\n\n"
  ^ (String.concat "" formatted_flags_list) ^ "\n"
  ^ "OPTIONS: " ^ "\n"
  ^ "\t" ^ "-h, --help     Show this help" ^ "\n"
  ^ "\t" ^ "-v, --version  Show version info" ^ "\n"
