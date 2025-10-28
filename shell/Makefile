CC = riscv64-linux-gnu-gcc

CFLAGS = -gdwarf-5 -static-pie -fPIC --sysroot=$(HOME)/sysroot -I$(HOME)/sysroot/usr/include -Wno-error=implicit-function-declaration

TARGET = shell
SRC = main.c builtins.c executor.c utils.c
OBJ = $(SRC:.c=.o)

.PHONY: all clean

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) -o $@ $^

%.o: %.c shell.h
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(TARGET) $(OBJ)
