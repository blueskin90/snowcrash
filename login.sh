#!/bin/sh
#!/usr/bin/expect -f
IP="192.168.123.129"
LEVEL=6


printf -v ACTUAL_LEVEL "level%02d\n" $((LEVEL));
printf -v LAST_LEVEL "level%02d\n" $((LEVEL - 1));
printf -v COMMAND "cat ./%s/flag\n" $LAST_LEVEL
PASS=$(echo `$COMMAND`);
printf -v STRING "sshpass -p %s ssh -p 4242 -o StrictHostKeyChecking=no %s@%s\n" $PASS $ACTUAL_LEVEL $IP;
#printf -v STRING "ssh -p 4242 -o StrictHostKeyChecking=no %s@%s\n" $ACTUAL_LEVEL $IP;

eval $STRING
