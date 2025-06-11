# Protocol-Test-Scripts
## A minimal Bash-based client-server implementation to test communication best Protocols


## 📡 UDP Protocol Test Scripts
A minimal Bash-based client-server implementation to test UDP communication.

udp_server.sh – Simulates a simple UDP server using netcat, listening for incoming messages and replying with a test confirmation.

udp_client.sh – Sends a test UDP message to the server and displays the response.

💡 Useful for debugging UDP connectivity and verifying network paths between devices.

Use [Client.sh](https://github.com/M0G3H/Protocol-Test-Scripts/blob/main/udp_client.sh) And [Server.sh](https://github.com/M0G3H/Protocol-Test-Scripts/blob/main/udp_server.sh)

🚀 Test Resault

Tool    = netcat\n

protocol= UDP\n

OS      = Ubuntu\n

server\n
		root@Server:/home/admin/config-file# nc -u -l -p 1234\n
		hello\n
		hi\n
		are you server\n
		yes\n
		good luck!\n
		!?!?!?\n

client\n
		root@Client:/home/user# nc -u 10.0.0.10 1234\n
		hello\n
		hi\n
		are you server\n
		yes\n
		good luck!\n
		!?!?!?\n

