#!/usr/bin/env bats

load 'test_helper'

@test "GitHub workflow YAMLs are valid" {
  if command -v yamllint >/dev/null 2>&1; then
    for wf in .github/workflows/*.yml; do
      [ -f "$wf" ] || continue
      run yamllint "$wf"
      [ "$status" -eq 0 ]
    done
  else
    for wf in .github/workflows/*.yml; do
      [ -f "$wf" ] || continue
      run bash -lc "grep -q 'name:' '$wf' && grep -q 'on:' '$wf' && grep -q 'jobs:' '$wf'"
      [ "$status" -eq 0 ]
    done
  fi
}