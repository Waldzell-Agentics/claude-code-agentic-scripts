#!/usr/bin/env bats

@test "jq is available" {
  run bash -lc 'command -v jq'
  [ "$status" -eq 0 ]
}

@test "curl is available" {
  run bash -lc 'command -v curl'
  [ "$status" -eq 0 ]
}

@test "git is available" {
  run bash -lc 'command -v git'
  [ "$status" -eq 0 ]
}