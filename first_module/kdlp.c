#include <linux/module.h>
#include <linux/proc_fs.h>
#include <linux/seq_file.h>

#define PROC_PATH "/proc/kdlp"
#define EXPECTED_MSG "KDLP module by Peter Meas\n"

static struct proc_dir_entry *proc_entry;

static int kdlp_show(struct seq_file *m, void *v) {

	seq_printf(m, EXPECTED_MSG);
	return 0;
}

static int __init kdlp_init(void) {

	proc_entry = proc_create_single("kdlp", 0444, NULL, kdlp_show);
	if (proc_entry == NULL) {
		return -ENOMEM;
	}

	printk(KERN_INFO "KDLP MODULE LOADED\n");
	return 0;
}

static void __exit kdlp_exit(void) {
	proc_remove(proc_entry);
	printk(KERN_INFO "KDLP MODULE UNLOADED\n");
}

module_init(kdlp_init);
module_exit(kdlp_exit);

MODULE_LICENSE("GPL");
MODULE_AUTHOR("PETER MEAS");
MODULE_DESCRIPTION("Simple proc entry that returns a fixed msg");
