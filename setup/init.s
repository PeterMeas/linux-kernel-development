.text				# text section for program code
.global _start			# _start should have global (i.e. external) linkage so that the linker can find it
_start:				# default program entry point is function named `_start`
	li a0, 1		# fd = file descriptor 1, stdout
	la a1, .Lmsg		# buf = pointer to msg
	lui a2, %hi(.Lmsglen)	# count = calculated length
	addi a2, a2, %lo(.Lmsglen) # need manually to break into two instructions - can't just use `li` or `la` psuedo instruction for complicated reasons
	li a7, 64		# __NR_write
	ecall			# make the system call
	li a0, 0xfee1dead	# "feel dead" :)
	li a1, 0x28121969	# Linus Torvald's birthday
	li a2, 0x4321fedc	# CMD_HALT
	li a7, 142		# __NR_reboot
	ecall			# make the system call. reboot will not return if it suceeds
	unimp			# include an illegal instruction to cause a crash in case reboot failed
.data				# data section for global data
.Lmsg:				# .L prefix indicates that the symbol is "local" so that it doesn't get an entry in the symbol table
	.ascii "Hello!\n"	# a friendly message
.Lmsglen = . - .Lmsg		# calculate the size of the message in bytes by subtracting the location of the beginning of the message from the current address
