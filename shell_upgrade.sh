#Upgrading shell from netcat

python -c 'import pty;pty.spawn("/bin/bash")';
Ctrl+z
echo $TERM
# Check for rows columns and term type
stty -a
# 
stty raw -echo
# Foreign the shell
fg
reset
# Type xterm-256color in prompt
export SHELL=bash
export TERM=xterm-256color
# Type your rows and columns from stty -a 
ssty rows 29 columns 115
