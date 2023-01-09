set DOCKER_NAME=oracle_sql_11
set DOCKER_IMAGE="oracleinanutshell/oracle-xe-11g"
set DOCKER_HOSTNAME=ORACLE-SQL-11
set ROOT_PATH_DB="%~dp0oracle"
set PORT_DB=49161

rem ================= Первый запуск  ==================
rem docker run -d --rm -p %PORT_DB%:1521 --name %DOCKER_NAME% --hostname %DOCKER_HOSTNAME%   -e ORACLE_ALLOW_REMOTE=true  -e ORACLE_ENABLE_XDB=true -v "%~dp0oracle":/tempbd %DOCKER_IMAGE%
rem cp -R /u01/app/oracle /tmpbd
rem ===================================================

docker run -d --rm -p %PORT_DB%:1521 --name %DOCKER_NAME% --hostname %DOCKER_HOSTNAME%   -e ORACLE_ALLOW_REMOTE=true  -e ORACLE_ENABLE_XDB=true -v %ROOT_PATH_DB%:/u01/app/oracle %DOCKER_IMAGE%

timeout 10