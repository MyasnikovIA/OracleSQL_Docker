set DOCKER_NAME=oracle_sql_11
set DOCKER_IMAGE="oracleinanutshell/oracle-xe-11g"
for /f %%i in ('docker ps -aqf "name=%DOCKER_NAME%"') do If not "%%i" == "" ( docker commit %%i %DOCKER_IMAGE% ) else ( echo "No Container running" )
timeout 10

