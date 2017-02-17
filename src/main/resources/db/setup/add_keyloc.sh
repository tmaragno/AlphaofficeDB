#!/usr/bin/expect -f
spawn sudo su oracle
sleep 1
send "mv /tmp/mysqlkey.pub ~oracle/.ssh/."
sleep 1
expect "$ "
send "chown oracle:oinstall ~oracle/.ssh/mysqlkey.pub"
sleep 1
expect "$ "
send "cat ~oracle/.ssh/authorized_keys ~oracle/.ssh/mysqlkey.pub > ~oracle/.ssh/authorized_keys_tmp"
sleep 1
expect "$ "
send "chown oracle:oinstall ~oracle/.ssh/authorized_keys_tmp"
sleep 1
expect "$ "
send "mv ~oracle/.ssh/authorized_keys_tmp ~oracle/.ssh/authorized_keys"
sleep 1
expect "$ "
send "exit\r"

# scp -o StrictHostKeyChecking=no -i mysqlkey mysqlkey.pub opc@140.86.0.66:/tmp
