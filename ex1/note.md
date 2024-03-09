./semester.sh
x permission is required. The shell forks itself and used a system call to make the os execute the file in the forked process. The OS will check the permission and forward the request to the loader which determins how to execute it. According to shebang, the program loader will execute /bin/bash and pass the file as the command-line argument.

. semester.sh
This only reads the file and pass to the shell from which you have called the command. The commands will be executed directly as read without opening a sub shell. Similar as bash semester.sh. The semester.sh is passed as a command-line argument.
