import os

argv = os.sys.argv
whitelist = ['ls', 'cd', 'pwd', 'whoami', 'grep', 'cat']

if len(argv) < 2:
    print("Usage: python3 main.py <command>")
    exit(1)

if argv[1] in whitelist:
    command = ' '.join(argv[1:])
    if len(command) > 20:
        print("Command too long")
        exit(1)
    print("Executing command: " + command)
    code = os.system(command)
    if code != 0:
        print("Command failed")
        exit(1)
else:
    print("Command not allowed")
    exit(1)