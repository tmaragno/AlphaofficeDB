#!/bin/bash
ssh -i mysqlkey opc@$dbcs_ip "testexpect2.sh"
echo "..done."
