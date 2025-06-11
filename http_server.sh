#!/bin/bash
# Save as: http_server.sh
# Usage: ./http_server.sh

MAX_REQUESTS=1
COUNT=0
PORT=1234
SERVER_IP="10.0.0.10"  # Change to your server's IP
RESPONSE="HTTP/1.1 200 OK\r\nContent-Type: text/plain\r\n\r\nHello from Server!\r\n✅ HTTP test succeeded!"

echo "🚀 Starting HTTP server on $SERVER_IP:$PORT"
echo "Press Ctrl+C to stop"

# Rosponse to one client and exit
while [ $COUNT -lt $MAX_REQUESTS ]; do
	echo -e "$RESPONSE" | nc -l -p $PORT -s $SERVER_IP
	COUNT=$((COUNT + 1))
done


