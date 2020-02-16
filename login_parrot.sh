#!/bin/sh
#!/usr/bin/expect -f
IP="192.168.123.130"
LEVEL="user"
PASS=1234;

printf -v STRING "sshpass -p %s ssh -o StrictHostKeyChecking=no %s@%s\n" $PASS $LEVEL $IP;

eval $STRING
