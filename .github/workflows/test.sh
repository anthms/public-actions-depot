#!/bin/bash

function teardown {
  status=$?
  echo "Teardown status ${status}"
  exit "${status}"
}

trap 'echo signal received!; kill "${child_pid}"; wait "${child_pid}"; teardown' SIGINT

echo "The script pid is $BASHPID"
sleep 60 &

child_pid="$!"
wait "${child_pid}"
