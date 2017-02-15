#!/bin/bash
ssh -i mysqlkey opc@140.86.0.66
./testexpect2.sh
echo "..done."
