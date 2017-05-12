#!/bin/bash -e
term_handler() {
  kill -2 $PID || kill -15 $PID || sudo kill -9 $PID || true
}

trap term_handler TERM INT
bin/cli.js --enableServer 1 &
PID=$!
wait $!
