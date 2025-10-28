#include "shell.h"

extern char **environ;
int execute_absolute(char *cmd, char **argv, int argc, char *in_file, char *out_file) {
    pid_t pid = syscall(SYS_clone, CLONE_VFORK | SIGCHLD, NULL);

    if (pid == 0) {	   
	
	 if (in_file != NULL) {
		//user wants inpput direc
		//
		int fdi = open(in_file, O_RDONLY);
		if (fdi < 0) {
			perror(in_file);
			_exit(1);
		}
		dup2 (fdi, 0);
		close (fdi);
	} else {
	
	//null
	}
	
	if (out_file != NULL) {
		// user wants output direc
		int fdo = open(out_file, O_WRONLY | O_CREAT | O_TRUNC, 0644);
		if (fdo < 0) {

			perror(out_file);
			_exit(1);
		}

		dup2 (fdo, 1);
		close (fdo);
	} else {
	
	//null
	}

    
	    
        execve(cmd, argv, environ);
        _exit(1);
    } else if (pid > 0) {
        int status;
        wait4(pid, &status, 0, NULL);
        return status;
    } else {
        perror("clone");
        return -1;
    }
}

int execute_with_path(char *cmd, char **argv, int argc, char *in_file, char *out_file) {

	char full_path[MAX_PATH];

	if (!find_cmd_path(cmd, full_path)) {
		printf("Unrecognized command: %s\n", cmd);
		return 1;
	}
	argv[0] = full_path;
	return execute_absolute(full_path, argv, argc, in_file, out_file);
}


char* find_cmd_path(char *cmd, char *path_buffer) {
	if (strchr(cmd, '/') != NULL) {
		strcpy(path_buffer, cmd);
		return path_buffer;
	}

	char *path_env = getenv("PATH");
	if (!path_env) {
		//printf("Unrecognized command: %s\n", cmd;)
		//return 1
		//;
		return NULL;
	}

	char path_copy[MAX_PATH];
	strncpy(path_copy, path_env, sizeof(path_copy)-1);
	path_copy[sizeof(path_copy)-1] = '\0';

	char *dir = strtok(path_copy, ":");
	while (dir != NULL) {
		snprintf(path_buffer, MAX_PATH, "%s/%s", dir, cmd);

		if (access(path_buffer, X_OK) == 0) {
			return path_buffer;
		}
		dir = strtok(NULL, ":");
	}
	return NULL;


}
