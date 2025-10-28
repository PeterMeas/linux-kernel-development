obj-m += kdlp.o

ARCH ?= riscv
CROSS_COMPILE ?= riscv64-linux-gnu-
KDIR ?= $(HOME)/linux

default: build

build:
	make -C $(KDIR) M=$(PWD) ARCH=$(ARCH) CROSS_COMPILE=$(CROSS_COMPILE) modules

clean:
	make -C $(KDIR) M=$(PWD) ARCH=$(ARCH) CROSS_COMPILE=$(CROSS_COMPILE) clean
