#!/usr/bin/expect -f
send "sudo su oracle\r"
expect "$ "
send "whoami\r"
expect "$ "
send "ls\r"
expect "$ "
send "exit\r"
