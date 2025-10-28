#include <asm/unistd.h>
#include <unistd.h>
#include <sys/syscall.h>
#include <errno.h>
#include <string.h>
#include <stdio.h>
#include <linux/reboot.h>
#include <sys/reboot.h>

int main(void) {

        char buff[128];
        long numBytes;

        numBytes = syscall(__NR_kdlp, buff, sizeof(buff));
        if (numBytes < 0) {

                printf("Syscall failed: %s\n", strerror(-numBytes));
                reboot(LINUX_REBOOT_CMD_POWER_OFF);
                return -numBytes;
        } else {
                write(1, buff, numBytes);

        }
        reboot(LINUX_REBOOT_CMD_POWER_OFF);
        return 0;
}
