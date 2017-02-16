#!/bin/bash
mysqlcs_ip=$1
scp -o StrictHostKeyChecking=no -i src/main/resources/db/setup/mysqlkey /src/main/resources/db/setup/populate_db.sql opc@$mysqlcs_ip:.
# ssh -o StrictHostKeyChecking=no -i src/main/resources/db/setup/mysqlkey opc@$mysqlcs_ip sudo su - oracle -c mysql AlphaofficeDB<src/main/resources/db/setup/populate_db.sql
echo "..done."
