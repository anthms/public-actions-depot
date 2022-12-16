#!/bin/bash

function teardown {
  status=$?
  echo "Teardown status ${status}"
  exit "${status}"
}

trap 'trap " " SIGTERM; kill 0; wait; teardown' SIGINT SIGTERM

echo "The script pid is $BASHPID"
sleep 30 &
sleep 40 &

wait
