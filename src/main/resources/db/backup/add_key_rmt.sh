#!/usr/bin/expect -f
spawn sudo su - oracle
send "cp /tmp/mysqlkey.pub ~oracle/.ssh/.\r"
expect "$ "
sleep 1
send "cd ~oracle/.ssh\r"
expect "$ "
sleep 1
send "cat authorized_keys mysqlkey.pub > authorized_keys_tmp\r"
expect "$ "
sleep 1
send "mv authorized_keys authorized_keys_backup\r"
expect "$ "
sleep 1
send "mv authorized_keys_tmp authorized_keys\r"
expect "$ "
sleep 1
send "rm mysqlkey.pub\r"
expect "$ "
sleep 1
send "rm *_tmp\r"
expect "$ "
sleep 1
send "exit\r"
