#!/usr/bin/env bats

@test "No hardcoded secrets in scripts" {
  run bash -lc "! grep -r 'password\\|secret\\|token\\|key.*=' evolution/ dev-tools/ optimization/ memory/ --include='*.sh'"
  [ "$status" -eq 0 ]
}

@test "No eval with direct user input" {
  run bash -lc "! grep -r 'eval.*\\$' evolution/ dev-tools/ optimization/ memory/ --include='*.sh'"
  [ "$status" -eq 0 ]
}