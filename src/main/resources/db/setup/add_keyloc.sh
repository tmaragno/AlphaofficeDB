#!/bin/bash
#
mysqlcs_ip=$1
#
scp -o StrictHostKeyChecking=no -i mysqlkey mysqlkey.pub opc@$mysqlcs_ip:.
#
ssh -o StrictHostKeyChecking=no -i mysqlkey opc@$mysqlcs_ip "chmod a+r mysqlkey.pub"
ssh -o StrictHostKeyChecking=no -i mysqlkey opc@$mysqlcs_ip "mv mysqlkey.pub /tmp"
#
ssh -o StrictHostKeyChecking=no -i mysqlkey opc@$mysqlcs_ip sudo su - oracle -c "cp /tmp/mysqlkey.pub ~oracle/.ssh"
ssh -o StrictHostKeyChecking=no -i mysqlkey opc@$mysqlcs_ip sudo su - oracle -c "chown oracle:oinstall ~oracle/.ssh/mysqlkey.pub"
ssh -o StrictHostKeyChecking=no -i mysqlkey opc@$mysqlcs_ip sudo su - oracle -c "cat ~oracle/.ssh/authorized_keys ~oracle/.ssh/mysqlkey.pub > ~oracle/.ssh/authorized_keys_tmp"
ssh -o StrictHostKeyChecking=no -i mysqlkey opc@$mysqlcs_ip sudo su - oracle -c "chown oracle:oinstall ~oracle/.ssh/authorized_keys_tmp"
ssh -o StrictHostKeyChecking=no -i mysqlkey opc@$mysqlcs_ip sudo su - oracle -c "mv ~oracle/.ssh/authorized_keys_tmp ~oracle/.ssh/authorized_keys"
exit
