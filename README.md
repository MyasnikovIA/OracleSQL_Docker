# OracleSQL_Docker
Пример запуска Oracle SQL локально в докер контейнере 


1)Первый запуск
<pre>docker run -d --rm -p %PORT_DB%:1521 --name oracle_sql_11 --hostname ORACLE-SQL-11 -e ORACLE_ALLOW_REMOTE=true  -e ORACLE_ENABLE_XDB=true -v "%~dp0oracle":/tempbd oracleinanutshell/oracle-xe-11g</pre>

2)Подключаемся командной строкой (sh) к запущенному серверу. 
<pre>docker exec -it oracle_sql_11 su </pre>

3)Копируем каталог с БД в расшаренную папку
<pre>cp -R /u01/app/oracle /tmpbd</pre>

4)Запуск контейнера в рабочем режиме
<pre>docker run -d --rm -p %PORT_DB%:1521 --name oracle_sql_11 --hostname ORACLE-SQL-11   -e ORACLE_ALLOW_REMOTE=true  -e ORACLE_ENABLE_XDB=true -v "%~dp0oracle":/u01/app/oracle oracleinanutshell/oracle-xe-11g</pre>


<br/>build.bat - скрипт сборки под винду
<br/>run.bat - скрипт запуска контейнера под винду
<br/>commit_images.bat - скрипт сохранения изменений из рабочего контейнера в IMG
<br/>save_images.bat - скрипт выгрузки IMG в файл архива
<br/>sh.bat - скрипт запуска командной строки
