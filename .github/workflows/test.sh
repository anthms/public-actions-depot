#!/bin/bash

function teardown {
  status=$?
  echo "Teardown status ${status}"
  exit "${status}"
}

for sig in INT TERM EXIT SIGHUP SIGINT SIGQUIT SIGABRT SIGALRM SIGTERM; do
    trap teardown $sig
done

echo Sleeping...
sleep 60 & wait $!
