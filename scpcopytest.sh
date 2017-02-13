#!/bin/bash

dbcs_ip=$1

echo "--//--"
echo "copying files:"
scp -o StrictHostKeyChecking=no -i CustomerKey README.txt opc@$dbcs_ip:/home/opc/
echo "..done."
