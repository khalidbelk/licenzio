(*
  licenzio - A CLI tool for adding license files to projects
  Khalid B. | @khalidbelk, 2026
  File: src/file.ml
*)

let read_file filename =
  try
    In_channel.with_open_bin filename In_channel.input_all
  with exn ->
    failwith (Printexc.to_string exn)


let write_to_file content dest_filename =
  let out_channel = open_out dest_filename in
  output_string out_channel content;
  close_out out_channel;
