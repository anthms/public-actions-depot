#!/bin/bash

function teardown {
  status=$?
  echo "Teardown status ${status}"
  exit "${status}"
}

trap teardown SIGINT

ps
echo Sleeping...
sleep 60 & wait $!
