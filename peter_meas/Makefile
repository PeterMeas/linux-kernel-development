CC := riscv64-linux-gnu-gcc
CFLAGS := -gdwarf-5 -static-pie -fPIC \
          --sysroot=/home/peter_meas/sysroot \
          -I/home/peter_meas/sysroot/usr/include \
          -I/home/peter_meas/sysroot/usr/include/asm

SRC := test.c
TARGET := init

all: $(TARGET)

$(TARGET): $(SRC)
	$(CC) $(CFLAGS) $(SRC) -o $(TARGET)

clean:
	rm -f $(TARGET)
