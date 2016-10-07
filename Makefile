# UCLA CS118
# Author: Jason Phuoc La & Gabriel Pawlowsky

CC = g++
CFLAGS = -g -Wall -Wextra -Werror

all: sender client

sender: sender.c packet.h
	$(CC) sender.c -o sender

client: client.c packet.h
	$(CC) client.c -o client

clean:
	rm -fr *.o *~ *.bak *.tar.gz core *.core *.tmp sender client
