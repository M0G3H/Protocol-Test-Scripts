#!/bin/bash

SERVER_IP="10.0.0.10"
PORT=1234
REQUEST="Hello this is UDP Test from Client\r\n✅ UDP test succeeded!\r\n"

echo "🔍 Testing UDP server at $SERVER_IP:$PORT..."
echo -e "$REQUEST" | timeout 2 nc -u -w 1 $SERVER_IP $PORT

