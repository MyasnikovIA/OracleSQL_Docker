set DOCKER_NAME=oracle_sql_11
set DOCKER_IMAGE="oracleinanutshell/oracle-xe-11g"
set DOCKER_HOSTNAME=ORACLE-SQL-11
set ROOT_PATH_DB="%~dp0DB"
set PORT_DB=49161

docker exec -it %DOCKER_NAME% su && sqlplus && system && oracle
 

