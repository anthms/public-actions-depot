#!/bin/bash

function teardown {
  status=$?
  echo "Teardown status ${status}"
  exit "${status}"
}

trap 'echo signal received!; kill $(jobs -p); wait; teardown' SIGINT SIGTERM

echo "The script pid is $BASHPID"
sleep 30 &
sleep 40 &

wait
