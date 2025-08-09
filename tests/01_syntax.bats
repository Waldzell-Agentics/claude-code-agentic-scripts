#!/usr/bin/env bats

setup() {
  chmod +x evolution/*.sh dev-tools/*.sh optimization/*.sh memory/*.sh 2>/dev/null || true
}

@test "All scripts pass bash -n" {
  for script in evolution/*.sh dev-tools/*.sh optimization/*.sh memory/*.sh; do
    [ -f "$script" ] || continue
    run bash -n "$script"
    [ "$status" -eq 0 ]
  done
}