#!/usr/bin/expect -f
spawn sudo su -  oracle
send "cp /tmp/mysqlkey.pub ~oracle/.ssh/.\r"
expect "$ "
send "cat ~oracle/.ssh/authorized_keys ~oracle/.ssh/mysqlkey.pub > ~oracle/.ssh/authorized_keys_tmp\r"
expect "$ "
send "mv ~oracle/.ssh/authorized_keys_tmp ~oracle/.ssh/authorized_keys\r"
expect "$ "
send "exit\r"
