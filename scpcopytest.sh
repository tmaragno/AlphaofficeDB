#!/bin/bash

dbcs_ip=$1

echo "--//--"
scp -o StrictHostKeyChecking=no -i CustomerKey cr_db.sql opc@$dbcs_ip:/home/opc/
ssh -o StrictHostKeyChecking=no -i CustomerKey opc@$dbcs_ip "cr_db.sh"
echo "..done."
