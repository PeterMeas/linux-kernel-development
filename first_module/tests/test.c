#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/stat.h>
#include <string.h>
#include <errno.h>

#define PROC_PATH "/proc/kdlp"
#define EXPECTED_MSG "KDLP module by Peter Meas\n"
#define EXPECTED_LEN 26

int test_num = 1;
// helper func print TAP result
// pass = 1 -> success
// pass = 0 -> failure
// description -> what test checks
void print_test_results(int pass, const char *description) {
	if (pass) {
		printf("ok %d - %s\n", test_num, description);
	} else {
		printf("not ok %d - %s\n", test_num, description);
	}
	test_num++;
}

//helper func to print diagnostic info when test fail
void print_diagnostic(const char *msg) {
	printf("# %s\n", msg);
}

int main() {

	printf("1..10\n");
	int fd;
	char buffer[100];
	char buffer2[100];
	ssize_t read_bytes;
	ssize_t bytes_read;
	ssize_t bytes_read2;
	ssize_t seek;
	int saved_errno;


	//TEST 1: check if file exist
	struct stat file_info;
	int result = stat(PROC_PATH, &file_info);
	if (result == 0) {
		print_test_results(1, "File exists");
	} else {
		print_test_results(0, "File does not exist");
	}

	//TEST 2: Check file permissions
	if ((file_info.st_mode & 0777) == 0444) {
		print_test_results(1, "File is read only");
	} else {
		print_test_results(0, "File is not read only");
	}

	//TEST 3: Check file ownership
	if (file_info.st_uid == 0 && file_info.st_gid == 0) {
		print_test_results(1, "File is owned by user root and group root");
	} else {
		print_test_results(0, "File is not owned by root and group root");
	}
	//TEST 4: Check open file for reading
	fd = open(PROC_PATH, O_RDONLY);
	if (fd >= 0) {
		print_test_results(1, "File is open for reading");
		close(fd);
	} else {
		print_test_results(0, "File is not open for reading");
	}
	//TEST 5: Reading content and verify if match
	fd = open(PROC_PATH, O_RDONLY);

	if (fd >= 0) {
		int rd = read(fd, buffer, 27);
		if (rd <= 0) {
		print_test_results(0, "test failed");

		} else {
			if (rd == EXPECTED_LEN && memcmp(buffer, EXPECTED_MSG, EXPECTED_LEN) == 0) {

	print_test_results(1, "content read and matches");
			} else {
		print_test_results(0, "content doesnt match");
			}
		}
		close(fd);
	} else {

	print_test_results(0, "failed to open file for reading");
	}
	//TEST 6: check file pos advances correctly
	fd = open(PROC_PATH, O_RDONLY);
	bytes_read = read(fd, buffer, 10);
	bytes_read2 = read(fd, buffer2, 10);

	if (bytes_read == 10 && bytes_read2 > 0 && memcmp(buffer2, EXPECTED_MSG + 10, bytes_read2) == 0) {

	print_test_results(1, "file position advances correctly");
	} else {

	print_test_results(0, "fie position did not advance correctly");
	}
	close(fd);

	//TEST 7: verify reading at EOF returns 0 bytes
	fd = open(PROC_PATH, O_RDONLY);
	bytes_read = read(fd, buffer, EXPECTED_LEN);
	bytes_read = read(fd, buffer, 10);

	if (bytes_read == 0) {
		print_test_results(1, "hit EOF as expected");
	} else {
		print_test_results(0, "did not hit EOF as expected");
	}
	close(fd);

	//TEST 8: write operations fail
	char data[] = "test";
	fd = open(PROC_PATH, O_RDONLY);
	ssize_t write_result = write(fd, data, 4);

	if (write_result == -1) {
	 saved_errno = errno;
	if (saved_errno == EINVAL){

	print_test_results(1, "failed with right error code");
	} else {

	print_test_results(0, "failed with wrong error code");
	}
	} else {

	print_test_results(0, "write succeeded, shouldve failed");
	}

close(fd);


	//TEST 9 : test seeking
	fd = open(PROC_PATH, O_RDONLY);
	seek = lseek(fd, 10, SEEK_SET);
	read_bytes = read(fd, buffer, 10);
	if (read_bytes > 0 && memcmp(buffer, EXPECTED_MSG + 10, read_bytes) == 0)
	{

	print_test_results(1, "seeking works correctly");
	} else {
	print_test_results(0, "seeking does not work correctly");
	}
	close(fd);

	//TEST 10: test seeking to negative position fails
	//
	//

	fd = open(PROC_PATH, O_RDONLY);
	seek = lseek(fd, -5, SEEK_SET);
	if (seek == -1) {
		saved_errno = errno;
		if (saved_errno == EINVAL) {
			print_test_results(1, "negative seek position fails");

		} else {
		print_test_results(0, "negative seek position did not fail as expected");
		}

	}
	close(fd);
	return 0;
}
