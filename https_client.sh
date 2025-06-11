#!/bin/bash
# Save as: client.sh
# Forces the server to exit after one request.

SERVER_IP="10.0.0.10"
PORT=1234

# Send HTTP request and immediately close the connection
{
    echo -e "GET /test HTTP/1.1\r\nHost: example.com\r\nConnection: close\r\n\r\n";
    sleep 0.1;  # Small delay to ensure data is sent before closing
} | openssl s_client -connect "$SERVER_IP:$PORT" -quiet

exec 3>&-
