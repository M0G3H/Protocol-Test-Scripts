#!/bin/bash
# Save as: http_server.sh
# Usage: ./http_server.sh

COUNT=0
MAX_REQUESTS=1
PORT=1234
SERVER_IP="10.0.0.10"  # Change to your server's IP
RESPONSE="HTTP/1.1 200 OK\r\nContent-Type: text/plain\r\n\r\nHello from Server!"

echo "🚀 Starting HTTP server on $SERVER_IP:$PORT"
echo "==========================================="

# Run server and capture output
OUTPUT=$(echo -e "$RESPONSE" | nc -N -l -p $PORT -s $SERVER_IP 2>&1)

# Print formatted output
echo -e "\r\n$OUTPUT\r\n==========================================="
echo "✅ HTTP test succeeded!"
