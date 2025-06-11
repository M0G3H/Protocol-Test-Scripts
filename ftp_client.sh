#!/bin/bash

# FTP server details
FTP_SERVER="10.0.0.10"
FTP_PORT="2121"
FTP_USER="123"
FTP_PASS="123"

# Create test file
echo "This is a test FTP upload file" > test.txt

# FTP upload commands
ftp -n -v $FTP_SERVER $FTP_PORT << EOF
user $FTP_USER $FTP_PASS
binary
put "test.txt"
bye
EOF

# Check upload status
if [ $? -eq 0 ]; then
  echo "Successfully uploaded 'test.txt' to $FTP_SERVER:$FTP_PORT"
  
  # Clean up - remove local test file
  rm -f test.txt
  echo "Local test file removed"
else
  echo "Failed to upload file. Check FTP server/credentials."
  
  # Clean up even if upload failed
  rm -f test.txt
  exit 1
fi
