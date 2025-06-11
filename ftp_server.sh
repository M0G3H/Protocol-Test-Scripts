#!/bin/bash

# Set up a temporary directory for FTP files
FTP_DIR="$(mktemp -d)"
echo "FTP server root: $FTP_DIR"

# Start an FTP server with username/password "123"
python3 - <<EOF &
from pyftpdlib.authorizers import DummyAuthorizer
from pyftpdlib.handlers import FTPHandler
from pyftpdlib.servers import FTPServer

authorizer = DummyAuthorizer()
authorizer.add_user("123", "123", "$FTP_DIR", perm="elradfmw")  # User+Pass=123

handler = FTPHandler
handler.authorizer = authorizer

server = FTPServer(("0.0.0.0", 2121), handler)
server.serve_forever()
EOF
FTP_PID=$!
echo "FTP server started (PID: $FTP_PID). Connect with username/password: 123"

# Wait for a file to appear
echo "Waiting for an FTP file upload..."
while true; do
  if [ -n "$(ls -A "$FTP_DIR" 2>/dev/null)" ]; then
    echo "----------------------------------------"
    echo "----------------------------------------"
    echo "✅FTP test successful"
    echo "Received file: $(ls "$FTP_DIR")"
	# Get the first file found in the directory (assuming only one file exists)
	RANDOM_FILE=$(ls -1 "$FTP_DIR" | head -n 1)

	# Check if a file was found
	if [ -z "$RANDOM_FILE" ]; then
	  echo "No files found in $FTP_DIR"
	  exit 0
	fi

	# Display the file contents
	echo "Contents of $RANDOM_FILE:"
	cat "$FTP_DIR/$RANDOM_FILE"
	echo "----------------------------------------"
        echo "----------------------------------------"
    break
  fi
  sleep 1
done

# Clean up
kill $FTP_PID
rm -rf "$FTP_DIR"
exit 0


