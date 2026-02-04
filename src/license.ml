(*
  licenzio - A CLI tool for adding license files to projects
  Khalid B. | @khalidbelk, 2026
  File: src/license.ml
*)

open File

type license =
  | APACHE_2
  | ARTISTIC_2
  | BSD_3_Clause
  | CC_BY_4
  | EUPL_1_2
  | GNU_AGPL_3
  | GNU_GPL_2
  | GNU_LGPL_3
  | MIT
  | MOZILLA

let license_of_string str : license option =
  match str with
  | "apache" -> Some (APACHE_2)
  | "artistic" -> Some (ARTISTIC_2)
  | "bsd" -> Some (BSD_3_Clause)
  | "cc" -> Some (CC_BY_4)
  | "eupl" -> Some (EUPL_1_2)
  | "agpl" -> Some (GNU_AGPL_3)
  | "gpl" -> Some (GNU_GPL_2)
  | "lgpl" -> Some (GNU_LGPL_3)
  | "mit" -> Some (MIT)
  | "mozilla" -> Some (MOZILLA)
  | _ -> None

let filename_of_license license : string =
  let slug =
    match license with
    | APACHE_2      -> "apache_2.0"
    | ARTISTIC_2    -> "artistic_2.0"
    | BSD_3_Clause  -> "bsd_3_clause"
    | CC_BY_4       -> "cc_attrib_4"
    | EUPL_1_2      -> "eupl_1.2"
    | GNU_AGPL_3    -> "gnu_agpl-v3"
    | GNU_GPL_2     -> "gnu_gpl-v3"
    | GNU_LGPL_3    -> "gnu_lgpl-v3"
    | MIT           -> "mit"
    | MOZILLA       -> "mozilla"
  in
    let filepath = "./_licenses/" ^ slug ^ ".md"
    in filepath

let title_of_license = function
  | APACHE_2      -> "Apache License (Version 2.0)"
  | ARTISTIC_2    -> "The Artistic License 2.0"
  | BSD_3_Clause  -> "BSD 3-Clause License"
  | CC_BY_4       -> "Creative Commons - Attribution 4.0 International"
  | EUPL_1_2      -> "European Union Public License 1.2"
  | GNU_AGPL_3    -> "GNU Affero General Public License v3.0"
  | GNU_GPL_2     -> "GNU General Public License v2.0"
  | GNU_LGPL_3    -> "GNU Lesser General Public License v3.0"
  | MIT           -> "MIT License"
  | MOZILLA       -> "Mozilla Public License 2.0"

let create_license_file str =
  let out_filepath = "./LICENSE" in
  match license_of_string str with
    | Some valid ->
        let license_path = (filename_of_license valid) in
        Printf.printf "Creating '%s'...\n" (title_of_license valid);
        write_to_file (read_file license_path) out_filepath ;
        exit 0
    | None ->
        Printf.eprintf "The provided string doesn't match any supported license.\n";
        exit 1;