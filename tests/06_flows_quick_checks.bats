#!/usr/bin/env bats

setup() {
  chmod +x evolution/*.sh dev-tools/*.sh optimization/*.sh memory/*.sh 2>/dev/null || true
}

@test "ADAS Meta Agent help returns quickly" {
  [ -f evolution/adas-meta-agent.sh ] || skip "adas-meta-agent.sh not found"
  run timeout 5 bash -lc './evolution/adas-meta-agent.sh --help 2>/dev/null || true'
  [ "$status" -eq 0 ]
}

@test "Intelligent Debugger help returns quickly" {
  [ -f dev-tools/intelligent-debugger.sh ] || skip "intelligent-debugger.sh not found"
  run timeout 5 bash -lc './dev-tools/intelligent-debugger.sh --help 2>/dev/null || true'
  [ "$status" -eq 0 ]
}

@test "Memory Manager help returns quickly" {
  [ -f memory/memory-manager.sh ] || skip "memory-manager.sh not found"
  run timeout 5 bash -lc './memory/memory-manager.sh --help 2>/dev/null || true'
  [ "$status" -eq 0 ]
}