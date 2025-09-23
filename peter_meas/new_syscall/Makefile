CC := riscv64-linux-gnu-gcc
CFLAGS := -gdwarf-5 -static-pie -fPIC \
          --sysroot=/home/peter_meas/sysroot \
          -I/home/peter_meas/sysroot/usr/include \
          -I/home/peter_meas/sysroot/usr/include/asm

all: init

init: test.c kdlp_syscall.S
	$(CC) $(CFLAGS) $^ -o $@

clean:
	rm -f init
