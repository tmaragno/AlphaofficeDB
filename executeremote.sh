#!/bin/bash

mysqlcs_ip=$1

scp -o StrictHostKeyChecking=no -i mysql_private.ppk cr_db.sql opc@$mysqlcs_ip:/home/opc/

ssh -o StrictHostKeyChecking=no -i mysql_private.ppk opc@$mysqlcs_ip <<'ENDSSH'
chmod 711 /home/opc
sudo su oracle
mysql AlphaofficeDB < cr_db.sql
ENDSSH
