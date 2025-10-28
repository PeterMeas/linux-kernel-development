CC = gcc
CFLAGS = -Wall -Wextra -O2
all: test_pagetable_walk

test_pagetable_walk: test_pagetable_walk.c
	$(CC) $(CFLAGS) -o test_pagetable_walk test_pagetable_walk.c

clean:
	rm -f test_pagetable_walk

.PHONY: all clean
