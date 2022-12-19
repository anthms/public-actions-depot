#!/bin/bash

function teardown {
  status=$?
  echo "Teardown status ${status}"
  exit "${status}"
}

trap 'echo "signal received!"; teardown' SIGINT

ps
echo "The script pid is $BASHPID"
echo "dollar sign exclamation: $!"
sleep 60

wait $!
