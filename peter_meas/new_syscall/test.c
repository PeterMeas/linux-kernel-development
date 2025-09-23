#include <unistd.h>
#include <sys/syscall.h>
#include <errno.h>
#include <string.h>
#include <stdio.h>

int main(int argc, char** argv) {

	char buff[128];
	long numBytes;

	numBytes = syscall(__NR_kdlp, buff, sizeof(buff));
	if (numBytes < 0) {

		printf("Syscall failed: %s\n", strerror(-numBytes));
		return -numBytes;
	} else {
		write(1, buff, numBytes);
	}
	return 0;
}
