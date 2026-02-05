#!/bin/bash

LOGFILE="server.log"

if [ ! -f "$LOGFILE" ]; then
  echo "server.log not found"
  exit 1
fi

COUNT=$(grep -c "Error" "$LOGFILE")
echo "Lines containing 'Error': $COUNT"
