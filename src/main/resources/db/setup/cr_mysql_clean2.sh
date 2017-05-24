#!/bin/bash
export ID_DOMAIN=$3
export USER_ID=$1
export USER_PASSWORD=$2
export PAAS_HOST=$4

result="\"status\":\"RUNNING\""
job="dummyjob"

#Check Variable
echo "User: ${USER_ID}"
echo "Password: ${USER_PASSWORD}"
echo "Domain: ${ID_DOMAIN}"
echo "REST Endpoint: ${PAAS_HOST}"

# ---------------------------- CREATE TEST INSTANCE ------------------------------------

	# submit job and take result of job submission, strip spaces and assign to variable job
	job=$(curl -X POST \
	-u "${USER_ID}:${USER_PASSWORD}" \
	-H "X-ID-TENANT-NAME: ${ID_DOMAIN}" \
	-H "Content-Type: application/vnd.com.oracle.oracloud.provisioning.Service+json" \
	-H "Accept: application/json" \
	-d '{"componentParameters":{"mysql":{"dbName":"AlphaofficeDB2","dbStorage":"25","enterpriseMonitor":"No","mysqlPort":"3306","mysqlUserName":"root","mysqlUserPassword":"Alpha2014_","shape":"oc3"}},"serviceParameters":{"backupDestination":"NONE","meteringFrequency":"HOURLY","noRollback":false,"serviceDescription":"Test MYSQL DB for Microservices DB Workshop","serviceName":"AlphaofficeDB2","vmPublicKeyText":"ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCmoFk1l0rlKwY3o9q3U5EGwpDUyPmjbSj8FOWA5F4obT9Mgw8WVan90czweMSveEiXEq9duD3Q6j7QlDgxGJGhzkSBgn3E3RIn4LWUbv6U6/T0SDh1cYr4Cxgp17mF4Ic7RFLzV2WYNTMkLcqfzUvfIvB4M9gE/3b0A6Lvw0PDJFM9ZzXG3fdU8YIeyMijHPwryvyRRl9/u6jZWwdLGG2kT8Eeyu1MENcZDrX6dIQ7/TwLdz06sYbwxfPIHDY/VQ3UgUya3dF0jloxF8E9Be61UZveJJCra9+MsnZGgVEM5dQJqbnMWQaZ1eLgniR9UbRuKbj5lcL6HakzXdtqkV9D dcameron@dcameron-linux","vmUser":"opc"}}' \
	https://${PAAS_HOST}/paas/api/v1.1/instancemgmt/${ID_DOMAIN}/services/MySQLCS/instances|sed 's/ /_/g')

	# find position of JobID in string
	num=$(echo $job|grep -b -o "jobId"|awk -F":" '{print $1}')

	# find position of }} in string
	num2=$(echo $job|grep -b -o "}}"|awk -F":" '{print $1}')

	# isolate job id number and assign to jobresult - use this to test status of job below
	jobresult=${job:$num+8:$num2-$num-9}

	echo $job
	echo $jobresult

	echo $result

