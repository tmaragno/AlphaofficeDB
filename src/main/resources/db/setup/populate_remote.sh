#!/usr/bin/expect -f
spawn sudo su oracle
sleep 1
send "whoami\r"
expect "$ "
send "cd /tmp\r"
expect "$ "
send "mysql AlphaofficeDB<populate.sql\r"
sleep 1
expect "$ "
send "exit\r"
