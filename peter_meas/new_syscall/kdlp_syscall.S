#include <asm/unistd.h>

.global kdlp

#a0 is buffer and a1 is size
kdlp:
	li a7, __NR_kdlp		#load syscall
	ecall			#perform syscall
	ret			#return to C caller
