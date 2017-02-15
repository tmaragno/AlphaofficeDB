#!/usr/bin/expect -f
spawn sudo su oracle\r
expect "$ "
send "whoami\r"
expect "$ "
send "ls\r"
expect "$ "
send "exit\r"
