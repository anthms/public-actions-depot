#!/bin/bash

function teardown {
  status=$?
  echo "Teardown status ${status}"
  exit "${status}"
}

trap teardown SIGINT

echo Sleeping...
sleep 5 & wait $!
