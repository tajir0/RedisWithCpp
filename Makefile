src=$(wildcard src/*.cpp)

server:
	g++ -Wall -Wextra -O2 -g -pthread \
	$(src) \
	server.cpp \
	-o server
	
client:
	g++  -Wall -Wextra -O2 -g  client.cpp -o client



clean:
	rm server && rm client 