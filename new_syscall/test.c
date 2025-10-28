#include <unistd.h>
#include <sys/syscall.h>
#include <errno.h>
#include <string.h>
#include <stdio.h>
#include <linux/reboot.h>
#include <sys/reboot.h>

extern long kdlp(const char *buf, int size);

int main(int argc, char** argv) {

	char buff[128];
	long ret;

	ret = kdlp(buff, sizeof(buff));
	//ret = syscall(__NR_kdlp, buff, sizeof(buff));
	if (ret < 0) {

	//	printf("Syscall failed: %s\n", strerror(-ret));
	//	return -ret;
		printf("Error: syscall failed with code %ld\n", -ret);
	} else {
		printf("Syscall succeeded, returned %ld\n", ret);
	//	write(1, buff, ret);
	}
	reboot(LINUX_REBOOT_CMD_POWER_OFF);
	return 0;
}
