savedcmd_kdlp.mod := printf '%s\n'   kdlp.o | awk '!x[$$0]++ { print("./"$$0) }' > kdlp.mod
