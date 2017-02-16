#!/bin/bash
#
mysqlcs_ip=$1
#
scp -o StrictHostKeyChecking=no -i src/main/resources/db/setup/mysqlkey src/main/resources/db/setup/mysqlkey.pub opc@$mysqlcs_ip:.
#
ssh -o StrictHostKeyChecking=no -i src/main/resources/db/setup/mysqlkey opc@$mysqlcs_ip chmod a+r mysqlkey.pub
ssh -o StrictHostKeyChecking=no -i src/main/resources/db/setup/mysqlkey opc@$mysqlcs_ipmv mysqlkey.pub /tmp/.
#
ssh -o StrictHostKeyChecking=no -i src/main/resources/db/setup/mysqlkey opc@$mysqlcs_ip sudo su - oracle -c mv /tmp/mysqlkey.pub ~oracle/.ssh/.
ssh -o StrictHostKeyChecking=no -i src/main/resources/db/setup/mysqlkey opc@$mysqlcs_ip sudo su - oracle -c chown oracle:oinstall ~oracle/.ssh/mysqlkey.pub
ssh -o StrictHostKeyChecking=no -i src/main/resources/db/setup/mysqlkey opc@$mysqlcs_ip sudo su - oracle -c cat ~oracle/.ssh/authorized_keys ~oracle/.ssh/mysqlkey.pub > ~oracle/.ssh/authorized_keys_tmp
ssh -o StrictHostKeyChecking=no -i src/main/resources/db/setup/mysqlkey opc@$mysqlcs_ip sudo su - oracle -c chown oracle:oinstall ~oracle/.ssh/authorized_keys_tmp
ssh -o StrictHostKeyChecking=no -i src/main/resources/db/setup/mysqlkey opc@$mysqlcs_ip sudo su - oracle -c mv ~oracle/.ssh/authorized_keys_tmp ~oracle/.ssh/authorized_keys
ssh -o StrictHostKeyChecking=no -i src/main/resources/db/setup/mysqlkey opc@$mysqlcs_ip sudo su - oracle -c rm ~oracle/.ssh/mysqlkey.pub
ssh -o StrictHostKeyChecking=no -i src/main/resources/db/setup/mysqlkey opc@$mysqlcs_ip sudo su - oracle -c cat /etc/sudoers /home/opc/oracleSudo.txt > /tmp/oracleSudo
ssh -o StrictHostKeyChecking=no -i src/main/resources/db/setup/mysqlkey opc@$mysqlcs_ip sudo su - oracle -c cp /tmp/oracleSudo /etc/sudoers
ssh -o StrictHostKeyChecking=no -i src/main/resources/db/setup/mysqlkey opc@$mysqlcs_ip sudo su - oracle -c chown root:root /etc/sudoers
ssh -o StrictHostKeyChecking=no -i src/main/resources/db/setup/mysqlkey opc@$mysqlcs_ip sudo su - oracle -c chmod 440 /etc/sudoers
