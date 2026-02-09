(lang dune 3.19)

(name licenzio)

(generate_opam_files true)

(source
 (github khalidbelk/licenzio))

(authors "Khalid B. (@khalidbelk)")

(maintainers "Khalid B. (@khalidbelk)")

(license LICENSE)

(package
 (name licenzio)
 (synopsis "A License generation tool")
 (description "A CLI tool for adding LICENSE files to projects")
 (depends
    ocaml
    dune
    ppx_blob
  )
 (tags
  ("license" "open-source" "cli")))

; See the complete stanza docs at https://dune.readthedocs.io/en/stable/reference/dune-project/index.html
