set DOCKER_NAME=oracle_sql_11
set DOCKER_IMAGE="oracleinanutshell/oracle-xe-11g"
set DOCKER_HOSTNAME=ORACLE-SQL-11
set ROOT_PATH_DB="%~dp0DB"
set PORT_DB=49161

rem docker run -d --rm -p %PORT_DB%:1521  -v %ROOT_PATH_DB%:/opt/oracle/oradata --name %DOCKER_NAME% --hostname %DOCKER_HOSTNAME%   %DOCKER_IMAGE%
docker run -d --rm -p %PORT_DB%:1521 --name %DOCKER_NAME% --hostname %DOCKER_HOSTNAME%   %DOCKER_IMAGE%

timeout 10