#!/bin/bash

function teardown {
  status=$?
  echo "Teardown status ${status}"
  exit "${status}"
}

trap teardown SIGINT

echo "The script pid is $BASHPID"
sleep 60 &

child_pid="$!"
wait "${child_pid}"
