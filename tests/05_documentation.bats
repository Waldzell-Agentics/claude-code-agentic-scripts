#!/usr/bin/env bats

@test "Main README exists" {
  [ -f README.md ]
}

@test "Evolution README exists" {
  [ -f evolution/README.md ]
}

@test "Dev Tools README exists" {
  [ -f dev-tools/README.md ]
}

@test "Optimization README exists" {
  [ -f optimization/README.md ]
}

@test "Memory README exists" {
  [ -f memory/README.md ]
}

@test "Publication-ready doc exists" {
  [ -f PUBLICATION_READY.md ]
}