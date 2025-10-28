#include "shell.h"

extern char **environ;

void print_prompt(void) {
    char cwd[MAX_PATH];
    if (getcwd(cwd, sizeof(cwd)) == NULL) {
        perror("getcwd");
        printf("$ ");
    } else {
        printf("%s ", cwd);
    }
    fflush(stdout);
}

char **parse_command(char *line, int *argc) {
    static char *argv[MAX_ARGS];
    *argc = 0;

    char *token = strtok(line, " \t\n");
    while (token && *argc < MAX_ARGS-1) {
        argv[*argc] = token;
        (*argc)++;
        token = strtok(NULL, " \t\n");
    }
    argv[*argc] = NULL;
    return argv;
}

void free_args(char **argv, int argc) {
    (void)argv;
    (void)argc;
}

void detect_redirections(char **argv, int *argc, char **out_file, char **in_file) {
	char *output_file = NULL;
	char *input_file = NULL;
	int new_argc = 0;
/*	*out_file = NULL;
	*in_file = NULL;*/

	for (int i =0; i < *argc; i++) {
		//check for filename after ">"
		if (strcmp(argv[i], ">") == 0) {
			if (i+1 < *argc && argv[i+1] != NULL) {
				*out_file = argv[i+1];
				printf("Output redirection to: %s\n", *out_file);
				i++;	
			}
		} else if (strcmp(argv[i], "<") == 0) {
		//logic for input redirection
		if (i+1 < *argc && argv[i+1] != NULL) {
			*in_file = argv[i+1];
			printf("Input redirection to: %s\n", *in_file);
			i++;
		}
	} else {
	
		argv[new_argc++] = argv[i];
	}

     }

	//*argc = new_argc; 
	argv[new_argc] = NULL; 
	*argc = new_argc;
}


void handle_pipeline(char *line) {
	char *commands[10];
	int cmd_ct = 0;

	char *cmd = strtok(line, "|");

	while(cmd != NULL && cmd_ct < 10){
	
		commands[cmd_ct] = cmd;
		cmd_ct++;
		cmd = strtok(NULL, "|");
		//cmd_ct++;

	}
	if (cmd_ct < 2) {
		return;
	}

	char **argvs[10];
	int argcs[10];
	char paths[10][MAX_PATH];

	for (int i =0; i < cmd_ct; i++) {

		argvs[i] = parse_command(commands[i], &argcs[i]);
		if (!find_cmd_path(argvs[i][0], paths[i])) {
			printf("cmd not found: %s\n", argvs[i][0]);
return;
		}
	}

	int pipes[9][2];
	for (int i =0; i <cmd_ct-1; i++) {
		if (pipe(pipes[i]) == -1) {
			perror("pipe");
			return;
		}
	}

	pid_t pids[10];

	for (int i = 0; i < cmd_ct; i++) {
        pids[i] = syscall(SYS_clone, CLONE_VFORK | SIGCHLD, NULL);

        if (pids[i] == 0) {  // Child
            // Set up redirections
            if (i > 0) {
                // Not first command: read from previous pipe
                dup2(pipes[i-1][0], STDIN_FILENO);
            }

            if (i < cmd_ct-1) {
                // Not last command: write to next pipe
                dup2(pipes[i][1], STDOUT_FILENO);
            }

            // Close all pipe fds
            for (int j = 0; j < cmd_ct-1; j++) {
                close(pipes[j][0]);
                close(pipes[j][1]);
            }

            // Execute
            execve(paths[i], argvs[i], environ);
            perror(argvs[i][0]);
	    _exit(1);
        }
    }

    // Parent: close all pipes
    for (int i = 0; i < cmd_ct-1; i++) {
        close(pipes[i][0]);
        close(pipes[i][1]);
    }

    // Wait for all children
    for (int i = 0; i < cmd_ct; i++) {
        wait4(pids[i], NULL, 0, NULL);
    }


}
