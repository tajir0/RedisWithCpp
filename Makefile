src=$(wildcard src/*.cpp) $(wildcard data_structure/*.cpp)

CXX = g++
CXXFLAGS = -W -O2 -g -pthread -std=c++20 
#CXXFLAGS = -Wall -Wextra -O2 -g -pthread -std=c++20

all: server client

# server:
# 	g++ -Wall -Wextra -O2 -g -pthread \
# 	$(src) \
# 	server.cpp \
# 	-o server
	
# client:
# 	g++  -Wall -Wextra -O2 -g  client.cpp -o client

server: $(src) server.cpp
	$(CXX) $(CXXFLAGS) $^ -o $@

client: client.cpp
	$(CXX) $(CXXFLAGS) $< -o $@


clean:
	rm server && rm client 