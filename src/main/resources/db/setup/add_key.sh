#!/bin/bash
#
mysqlcs_ip=$1
#
scp -o StrictHostKeyChecking=no -i src/main/resources/db/setup/mysqlkey src/main/resources/db/setup/mysqlkey.pub opc@$mysqlcs_ip:.
#
ssh -o StrictHostKeyChecking=no -i src/main/resources/db/setup/mysqlkey opc@$mysqlcs_ip "chmod a+r mysqlkey.pub
mv mysqlkey.pub /tmp"
#
ssh -o StrictHostKeyChecking=no -i src/main/resources/db/setup/mysqlkey opc@$mysqlcs_ip sudo su - oracle -c "mv /home/opc/mysqlkey.pub ~oracle/.ssh/.
chown oracle:oinstall ~oracle/.ssh/mysqlkey.pub
cat ~oracle/.ssh/authorized_keys ~oracle/.ssh/mysqlkey.pub > ~oracle/.ssh/authorized_keys_tmp
chown oracle:oinstall ~oracle/.ssh/authorized_keys_tmp
mv ~oracle/.ssh/authorized_keys_tmp ~oracle/.ssh/authorized_keys
rm ~oracle/.ssh/mysqlkey.pub
cat /etc/sudoers /home/opc/oracleSudo.txt > /tmp/oracleSudo
cp /tmp/oracleSudo /etc/sudoers
chown root:root /etc/sudoers
chmod 440 /etc/sudoers"
