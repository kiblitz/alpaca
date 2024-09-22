open! Core

let commands : (module Subcommand_intf.S) list = [ (module Test_subcommand) ]

let command =
  Command.group ~summary:"A toy functional programming language compiler"
    ~preserve_subcommand_order:()
    (List.map commands ~f:(fun (module S) -> (S.name, S.command)))
