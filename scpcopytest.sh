#!/bin/bash

dbcs_ip=$1

echo "--//--"
echo "copying files:"
scp -o StrictHostKeyChecking=no -i README.txt opc@$dbcs_ip: .
echo "..done."
