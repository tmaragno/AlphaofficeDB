#!/bin/bash

dbcs_ip=$1

scp -o StrictHostKeyChecking=no -i CustomerKey cr_db.sql opc@$dbcs_ip:/home/opc/

ssh -o StrictHostKeyChecking=no -i CustomerKey opc@$dbcs_ip <<'ENDSSH'
chmod 711 /home/opc
sudo su oracle
mysql AlphaofficeDB < cr_db.sql
ENDSSH
