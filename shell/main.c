#include "shell.h"

int main(void) {
    char *line = NULL;
    size_t len = 0;

    while (1) {
        print_prompt();

        ssize_t read = getline(&line, &len, stdin);
        if (read == -1) {
            printf("\n");
            break;
        }
	if (strchr(line, '|') != NULL) {
		int pipe_counter = 0;
		for (int i = 0; line[i]; i++) {
			if (line[i] == '|') pipe_counter++;
		}
		printf("Found %d pipe(s)\n", pipe_counter);
		handle_pipeline(line);
		continue;
		// split command, handle pipeline
	}

        int argc = 0;
        char **argv = parse_command(line, &argc);

	char *output_file = NULL;
	char *input_file = NULL;
	detect_redirections(argv, &argc, &output_file, &input_file);

        if (argv[0] == NULL) {
            // empty line
        } else if (strcmp(argv[0], "exit") == 0) {
            builtin_exit(argv, argc);
        } else if (strcmp(argv[0], "cd") == 0) {
            builtin_cd(argv, argc);
        } else if (strcmp(argv[0], "exec") == 0) {
            builtin_exec(argv, argc);
        } else if (strchr(argv[0], '/') != NULL) {
            execute_absolute(argv[0], argv, argc, input_file, output_file);
        } else {
            execute_with_path(argv[0], argv, argc, input_file, output_file);
        }
    }

    free(line);
    return 0;
}
