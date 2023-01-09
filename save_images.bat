set DOCKER_IMAGE="oracleinanutshell/oracle-xe-11g"
set ROOT_PATH=%~dp0
set datestr=%date%
docker save -o %ROOT_PATH%Oracle_sql_11(%datestr%).tar %DOCKER_IMAGE% 

