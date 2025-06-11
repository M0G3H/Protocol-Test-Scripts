#!/bin/bash

PORT=1234
SERVER_IP="10.0.0.10"  # Change to your server's IP
RESPONSE="✅ UDP test succeeded!"
MAX_REQUESTS=2
COUNT=0

echo "🚀 Starting UDP server on $SERVER_IP:$PORT"
echo "==========================================="

while [ $COUNT -lt $MAX_REQUESTS ]; do
    # Use timeout to force exit after receiving data
    echo -e "$RESPONSE" | timeout 3 nc -u -l -p $PORT -s $SERVER_IP
    COUNT=$((COUNT + 1))
    echo "✅ Request handled ($COUNT/$MAX_REQUESTS)"
done

echo "Server exiting after $MAX_REQUESTS request(s)."

