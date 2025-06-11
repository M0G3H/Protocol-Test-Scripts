# Protocol-Test-Scripts
## A minimal Bash-based client-server implementation to test communication best Protocols


## 📡 UDP Protocol Test Scripts
A minimal Bash-based client-server implementation to test UDP communication.

udp_server.sh – Simulates a simple UDP server using netcat, listening for incoming messages and replying with a test confirmation.

udp_client.sh – Sends a test UDP message to the server and displays the response.

💡 Useful for debugging UDP connectivity and verifying network paths between devices.

📥 Use [UDP-Client.sh](https://github.com/M0G3H/Protocol-Test-Scripts/blob/main/udp_client.sh) And [UDP-Server.sh](https://github.com/M0G3H/Protocol-Test-Scripts/blob/main/udp_server.sh)

=================================================================

🚀 Test Resault

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




🚀 Test Resault

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

🚀 Test Resault

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

🚀 Test Resault

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





