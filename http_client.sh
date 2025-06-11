#!/bin/bash
# Save as: http_client.sh
# Usage: ./http_client.sh <SERVER_IP>

SERVER_IP="${1:-10.0.0.10}"  # Default IP if not provided
PORT=1234
REQUEST="GET /test HTTP/1.1\r\nHost: example.com\r\nConnection: close\r\n------------------------------\r\n✅ HTTP test succeeded!\r\n"

echo "🔍 Testing HTTP server at $SERVER_IP:$PORT..."
echo -e "$REQUEST" | nc -N $SERVER_IP $PORT

exit 0

















