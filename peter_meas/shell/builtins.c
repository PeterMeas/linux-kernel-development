#include "shell.h"

int builtin_exit(char **args, int argc) {
    if (argc > 1) {
        printf("exit: too many arguments\n");
        return 1;
    }
    exit(0);
}

int builtin_cd(char **args, int argc) {
    if (argc < 2) {
        printf("cd: no arguments\n");
        return 1;
    }
    if (argc > 2) {
        printf("cd: too many arguments\n");
        return 1;
    }
    if (chdir(args[1]) == -1) {
        perror("cd");
        return 1;
    }
    return 0;
}

int builtin_exec(char **args, int argc) {
    if (argc < 2) {
        printf("exec: missing argument\n");
        return 1;
    }
    execve(args[1], &args[1], NULL);
    printf("exec: %s\n", strerror(errno));
    return 1;
}
