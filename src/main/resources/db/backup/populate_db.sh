#!/bin/bash

export USER_ID=$1
export USER_PASSWORD=$2
export ID_DOMAIN=$3
export PAAS_HOST=$4

result="\"status\":\"RUNNING\""
job="dummyjob"

#Check Variable
echo "User: ${USER_ID}"
echo "Password: ${USER_PASSWORD}"
echo "Domain: ${ID_DOMAIN}"
echo "REST Endpoint: ${PAAS_HOST}"

# get IP address of new MySQL instance
response=$(curl -X GET \
-u "${USER_ID}:${USER_PASSWORD}" \
-H "X-ID-TENANT-NAME: $ID_DOMAIN" \
-H "Accept: application/json" \
https://${PAAS_HOST}/paas/api/v1.1/instancemgmt/${ID_DOMAIN}/services/MySQLCS/instances/MicroserviceMySqlDB|sed -e 's/[{}]/''/g'|awk -v k="text" '{n=split($0,a,","); for (i=1; i<=n; i++) print a[i]}'|grep "ipAddress"|sed -n 1p)

mysqlcs_ip="$(tr -d "\"\`'[:alpha:]:" <<<$response)"

# scp -o StrictHostKeyChecking=no -i src/main/resources/db/setup/mysqlkey /src/main/resources/db/setup/populate_db.sql opc@$mysqlcs_ip:.
ssh -o StrictHostKeyChecking=no -i src/main/resources/db/setup/mysqlkey opc@$mysqlcs_ip sudo su - oracle -c mysql AlphaofficeDB<src/main/resources/db/setup/populate_db.sql
echo "..done."

