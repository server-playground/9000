#!/usr/bin/env bash

PORT="9000"
HELLOWORLD="hello world"
RESPONSE="HTTP/1.1 200 OK\r\n\r\n$HELLOWORLD\r\n"

echo "server is running on \"http://localhost:$PORT/\""

while { echo "$RESPONSE"; } | nc -l "$PORT"; do
  echo "================================================"
done
