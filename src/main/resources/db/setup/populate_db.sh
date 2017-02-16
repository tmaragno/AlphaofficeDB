#!/bin/bash
ssh -o StrictHostKeyChecking=no -i mysqlkey opc@140.86.0.66 "./testexpect2.sh"
echo "..done."
