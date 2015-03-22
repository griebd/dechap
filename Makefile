CC=gcc
CFLAGS=-lssl -lcrypto

all:
	$(CC) $(CFLAGS) dechap.c -o dechap
