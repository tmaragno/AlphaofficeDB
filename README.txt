To Execute Flyway you need to pass in configuration parameters

Example:
mvn clean flyway:migrate -Dflyway.user=root -Dflyway.password=Admin123! -Dflyway.url=jdbc:mysql://140.86.35.140:3306 -Dflyway.driver=com.mysql.cj.jdbc.Driver -Dflyway.schemas=microservice

Run the Create script with a shell from command-line to create your DB:
sh cr_mysql_clean.sh "cloud.admin" "cArEful@9IDoL" "gse00002905" "psm.europe.oraclecloud.com"

You can set it up as part of the automated build but to create the URL you need the DB url, so this might not be useful to do:
cd mysql-migration/src/main/resources/db/setup
sh cr_mysql_clean.sh "cloud.admin" "cArEful@9IDoL" "gse00002905" "psm.europe.oraclecloud.com"