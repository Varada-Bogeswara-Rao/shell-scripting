#!/bin/bash
##################################
#Problem: Create a script that reads 3 process names from arguments (e.g. `systemd`, `sshd`, `crond`), queries their PID using `pgrep -x`, and prints an aligned table with columns: SERVICE, PID, STATUS
##################################

echo -e "SERVICE\tPID\tSTATUS\n$1\t$(pgrep $1 | head -n 1)\t"$(systemctl is-active $1)"\n$2\t$(pgrep $2 | head -n 1)\t"$(systemctl is-active $2)"\n$3\t$(pgrep $3 | head -n 1)\t"$(systemctl is-active $3)"\n
	   "
