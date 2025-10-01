#ifndef SHELL_H
#define SHELL_H

#define _GNU_SOURCE
#define _POSIX_C_SOURCE 200809L
#define _XOPEN_SOURCE 700
#define STDIN_FILENO 0
#define STDOUT_FILENO 1
#define STDERR_FILENO 2

#include <fcntl.h>
#include <sys/stat.h>

#include <signal.h>
#include <unistd.h>
#include <stdio.h>
#include <ctype.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>
#include <sys/resource.h>
#include <sys/syscall.h>
#include <sys/types.h>
#include <asm/unistd.h>


#define CLONE_VFORK 0x00004000
#ifndef X_OK
#define X_OK 1
#endif
#define MAX_ARGS 128
#define MAX_PATH 1024

int builtin_exit(char **args, int argc);
int builtin_cd(char **args, int argc);
int builtin_exec(char **args, int argc);

int execute_absolute(char *cmd, char **argv, int argc, char *in_file, char *out_file);
int execute_with_path(char *cmd, char **argv, int argc, char *in_file, char *out_file);

void print_prompt(void);
char **parse_command(char *line, int *argc);
void free_args(char **argv, int argc);

void detect_redirections(char **argv, int *argc, char **out_file, char **in_file);

void handle_pipeline(char *line);
char* find_cmd_path(char *cmd, char *path_buffer);
#endif
