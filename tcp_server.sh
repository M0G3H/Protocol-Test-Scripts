#!/bin/bash


PORT=1234
SERVER_IP="10.0.0.10"  # Change to your server's IP
RESPONSE="✅ TCP test succeeded!"

echo "🚀 Starting TCP server on $SERVER_IP:$PORT"
echo "==========================================="
echo "This is client message:"
# get one request and exit

while [ $COUNT -lt $MAX_REQUESTS ]; do
        echo -e "$RESPONSE" | nc -l -p $PORT -s $SERVER_IP
        COUNT=$((COUNT + 1))
done


