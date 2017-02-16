#!/bin/bash
mysqlcs_ip=$1
scp -o StrictHostKeyChecking=no -i /home/dcameron/gitrepo/AlphaofficeDB/src/main/resources/db/setup/mysqlkey populate_db.sql opc@$mysqlcs_ip:.
ssh -o StrictHostKeyChecking=no -i /home/dcameron/gitrepo/AlphaofficeDB/src/main/resources/db/setup/mysqlkey opc@$mysqlcs_ip sudo su - oracle -c mysql AlphaofficeDB<populate_db.sql
echo "..done."
