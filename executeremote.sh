#!/bin/bash
mysqlcs_ip=$1
ssh -i mysqlkey opc@$mysqlcs_ip 'sudo su oracle' 'mysql use AlphaofficeDB'
