#!/bin/bash


SERVER_IP="10.0.0.10"  # Change to your server's IP
PORT=1234
REQUEST="Hello this is TCP Test\r\n✅ TCP test succeeded!\r\n"

echo "🔍 Testing TCP server at $SERVER_IP:$PORT..."
echo -e "$REQUEST" | nc -N $SERVER_IP $PORT

exit 0
