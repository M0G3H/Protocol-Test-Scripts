# Protocol-Test-Scripts
## A minimal Bash-based client-server implementation to test communication best Protocols


## 📡 UDP Protocol Test Scripts
A minimal Bash-based client-server implementation to test UDP communication.

udp_server.sh – Simulates a simple UDP server using netcat, listening for incoming messages and replying with a test confirmation.

udp_client.sh – Sends a test UDP message to the server and displays the response.

💡 Useful for debugging UDP connectivity and verifying network paths between devices.

📥 Use [UDP-Client.sh](https://github.com/M0G3H/Protocol-Test-Scripts/blob/main/udp_client.sh) And [UDP-Server.sh](https://github.com/M0G3H/Protocol-Test-Scripts/blob/main/udp_server.sh)



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


