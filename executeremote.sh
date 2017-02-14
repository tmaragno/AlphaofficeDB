#!/bin/bash

mysqlcs_ip=$1

scp -o StrictHostKeyChecking=no -i mysqlkey cr_db.sql opc@$mysqlcs_ip:/home/opc/

ssh -o StrictHostKeyChecking=no -i mysqlkey opc@$mysqlcs_ip <<'ENDSSH'
sudo su oracle
mysql AlphaofficeDB < cr_db.sql
ENDSSH
