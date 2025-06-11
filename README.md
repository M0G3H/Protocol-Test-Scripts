# Protocol-Test-Scripts
## A minimal Bash-based client-server implementation to test communication best Protocols

🔧 ##Features:

###Simple UDP client-server model using netcat.

###Real-time status messages at each key step (connection attempt, response, etc.).

###Timeout-based logic to ensure clean exits.

###Colorful and emoji-enhanced feedback for clear terminal visibility.

###Ideal for network diagnostics, protocol testing, and education.


## 📡 UDP Protocol Test Scripts

A minimal Bash-based client-server implementation to test UDP communication.

udp_server.sh – Simulates a simple UDP server using netcat, listening for incoming messages and replying with a test confirmation.

udp_client.sh – Sends a test UDP message to the server and displays the response.

💡 Useful for debugging UDP connectivity and verifying network paths between devices.

📥 Use [UDP-Client.sh](https://github.com/M0G3H/Protocol-Test-Scripts/blob/main/udp_client.sh) And [UDP-Server.sh](https://github.com/M0G3H/Protocol-Test-Scripts/blob/main/udp_server.sh)
=================================================================





🚀 Test Resault
===========================
Tool    = netcat
protocol= UDP
OS      = Ubuntu

server
	root@Server:/home/admin/test# ./udp_server.sh
 
	🚀 Starting UDP server on 10.0.0.10:1234
	===========================================
	Hello this is UDP Test from Client
	✅ UDP test succeeded!
	
	✅ Request handled (1/1)
	Server exiting after 1 request(s).


client
	root@Client:/home/user/test# ./udp_client.sh
 
	🔍 Testing UDP server at 10.0.0.10:1234...
	This is response from server
	✅ UDP test succeeded!

 
## 📡 TCP Protocol Test Scripts

A minimal Bash-based client-server implementation to test TCP communication.

TCP_server.sh – Simulates a simple TCP server using netcat, listening for incoming messages and replying with a test confirmation.

TCP_client.sh – Sends a test TCP message to the server and displays the response.

💡 Useful for debugging UDP connectivity and verifying network paths between devices.

📥 Use [TCP-Client.sh](https://github.com/M0G3H/Protocol-Test-Scripts/blob/main/tcp_client.sh) And [TCP-Server.sh](https://github.com/M0G3H/Protocol-Test-Scripts/blob/main/tcp_server.sh)
============================================================



🚀 Test Resault
==========================
Tool    = netcat
protocol= TCP
OS      = Ubuntu

server:
	root@Server:/home/admin# ./tcp_server.sh
 
	🚀 Starting TCP server on 10.0.0.10:1234
	===========================================
	This is client message:
	Hello this is TCP Test
	✅ TCP test succeeded!
	
	./tcp_server.sh: line 13: [: 1: unary operator expected

		
client:
	root@Client:/home/user# ./tcp_client.sh
 
	🔍 Testing TCP server at 10.0.0.10:1234...
	✅ TCP test succeeded!

 
## 📡 HTTPS Protocol Test Scripts
A minimal Bash-based client-server implementation to test HTTPS communication.

HTTPS_server.sh – Simulates a simple HTTPS server using netcat, listening for incoming messages and replying with a test confirmation.

HTTPS_client.sh – Sends a test HTTPS message to the server and displays the response.

💡 Useful for debugging UDP connectivity and verifying network paths between devices.

📥 Use [HTTPS-Client.sh](https://github.com/M0G3H/Protocol-Test-Scripts/blob/main/https_client.sh) And [HTTPS-Server.sh](https://github.com/M0G3H/Protocol-Test-Scripts/blob/main/https_server.sh)
===================================================================================
🚀 Test Resault
=====================
Tool    = netcat
protocol= httpS
OS      = Ubuntu

server:
	root@Server:/home/admin/test# ./https_server.sh
 
	🚀 Starting HTTP server on 10.0.0.10:1234
	===========================================
	./https_server.sh: line 15: warning: command substitution: ignored null byte in input

	 ▒▒p{V▒▒▒▒▒{99▒▒. ▒▒+▒qSރW▒ ▒▒;
	@
	▒0▒▒>q▒\@ɒ▒▒s▒w▒▒▒4I>▒,▒0▒̨̩̪▒+▒/▒▒$▒(k▒#▒'g▒
	▒9▒     ▒3▒▒=<5/▒▒

	*(                                                                          +-3&$ ▒6▒}h▒G▒UW▒a▒\
	▒B▒A▒   3▒i_#▒"g
	===========================================
	✅ HTTP test succeeded!


client:
	root@Client:/home/user/test# ./https_client.sh
 
	405730A3387E0000:error:0A00010B:SSL routines:ssl3_get_record:wrong version number:../ssl/record/ssl3_record.c:354:

 
 
## 📡 HTTP Protocol Test Scripts

A minimal Bash-based client-server implementation to test HTTP communication.

HTTP_server.sh – Simulates a simple HTTP server using netcat, listening for incoming messages and replying with a test confirmation.

HTTP_client.sh – Sends a test HTTP message to the server and displays the response.

💡 Useful for debugging UDP connectivity and verifying network paths between devices.

📥 Use [HTTP-Client.sh](https://github.com/M0G3H/Protocol-Test-Scripts/blob/main/http_client.sh) And [HTTP-Server.sh](https://github.com/M0G3H/Protocol-Test-Scripts/blob/main/http_server.sh)
============================================================================
🚀 Test Resault
=================================================
Tool    = netcat
protocol= http
OS      = Ubuntu

server:
	root@Server:/home/admin/test# ./udp_server.sh
 
		🚀 Starting UDP server on 10.0.0.10:1234
		===========================================
		Hello this is UDP Test from Client
		✅ UDP test succeeded!
	
		✅ Request handled (1/1)
		Server exiting after 1 request(s).
		root@Server:/home/admin/test# ^C
		root@Server:/home/admin/test# ./http_server.sh
		🚀 Starting HTTP server on 10.0.0.10:1234
		Press Ctrl+C to stop
		GET /test HTTP/1.1
		Host: example.com
		Connection: close
		------------------------------
		✅ HTTP test succeeded!



client:
	root@Client:/home/user/test# ./http_client.sh
 
	🔍 Testing HTTP server at 10.0.0.10:1234...
	HTTP/1.1 200 OK
	Content-Type: text/plain

	Hello from Server!
	✅ HTTP test succeeded!


 
## 📡 FTP Protocol Test Scripts


A minimal Bash-based client-server implementation to test FTP communication.

FTP_server.sh – Simulates a simple FTP server using netcat, listening for incoming messages and replying with a test confirmation.

FTP_client.sh – Sends a test FTP message to the server and displays the response.

💡 Useful for debugging UDP connectivity and verifying network paths between devices.

📥 Use [FTP-Client.sh](https://github.com/M0G3H/Protocol-Test-Scripts/blob/main/ftp_client.sh) And [FTP-Server.sh](https://github.com/M0G3H/Protocol-Test-Scripts/blob/main/ftp_server.sh)


🛑This is the flow:
=======================

 1.Create test file
 2.auth
 3.upload file
 4.Check upload status
 5.server Display the file contents
 =================================================================================
🚀 Test Resault

Tool    = netcat
protocol= FTP
OS      = Ubuntu

server
	root@Server:/home/admin/test# ./ftp_server.sh
 
	FTP server root: /tmp/tmp.VpW8hgRq2O
	FTP server started (PID: 1472). Connect with username/password: 123
	Waiting for an FTP file upload...
	[I 2025-05-03 07:58:24] concurrency model: async
	[I 2025-05-03 07:58:24] masquerade (NAT) address: None
	[I 2025-05-03 07:58:24] passive ports: None
	[I 2025-05-03 07:58:24] >>> starting FTP server on 0.0.0.0:2121, pid=1472 <<<
	[I 2025-05-03 07:58:28] 10.0.1.2:50706-[] FTP session opened (connect)
	[I 2025-05-03 07:58:28] 10.0.1.2:50706-[123] USER '123' logged in.
	[I 2025-05-03 07:58:28] 10.0.1.2:50706-[123] STOR /tmp/tmp.VpW8hgRq2O/test.txt completed=1 bytes=31 seconds=0.003
	[I 2025-05-03 07:58:28] 10.0.1.2:50706-[123] FTP session closed (disconnect).
	----------------------------------------
	----------------------------------------
	✅FTP test successful
	Received file: test.txt
	Contents of test.txt:
	This is a test FTP upload file
	----------------------------------------
	----------------------------------------


client
	root@Client:/home/user/test# ./ftp_client.sh
 
	Connected to 10.0.0.10.
	220 pyftpdlib 2.0.1 ready.
	331 Username ok, send password.
	230 Login successful.
	Remote system type is UNIX.
	Using binary mode to transfer files.
	200 Type set to: Binary.
	local: test.txt remote: test.txt
	229 Entering extended passive mode (|||40735|).
	125 Data connection already open. Transfer starting.
	100% |***********************************|    31      161.88 KiB/s    00:00 ETA
	226 Transfer complete.
	31 bytes sent in 00:00 (11.22 KiB/s)
	221 Goodbye.
	Successfully uploaded 'test.txt' to 10.0.0.10:2121
	Local test file removed





