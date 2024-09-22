open! Core

let%expect_test "test test" =
  print_s [%message "this is a test"];
  [%expect {| "this is a test" |}]
