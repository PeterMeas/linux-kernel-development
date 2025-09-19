#include <stdio.h>
#include <sys/reboot.h>
#include <linux/reboot.h>

int main(void)
{
	puts("Hello from C!");
	reboot(LINUX_REBOOT_CMD_POWER_OFF);
}
