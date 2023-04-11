#!/bin/bash

function teardown {
  status=$?
  echo "Teardown status ${status}"
  exit "${status}"
}

echo "Starting sleep ..."
sleep 60

wait $!
