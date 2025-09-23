CC := riscv64-linux-gnu-gcc
CFLAGS := -gdwarf-5 -static-pie -fPIC --sysroot=../sysroot

all: init

init: test.c
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -f init
