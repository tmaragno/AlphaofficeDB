#!/usr/bin/expect -f
spawn ssh -i mysqlkey opc@140.86.0.66
expect "$ "
send "df -h\r"
expect "$ "
send "exit\r"

