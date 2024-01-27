docker exec -it oracle-23c sqlplus sys/foo@FREE as sysdba
docker exec -it oracle-23c sqlplus system/foo@FREE
docker exec -it oracle-23c sqlplus pdbadmin/foo@FREEPDB1

docker exec -it oracle-23c bash
sqlplus eoda/foo@FREEPDB1
sqlplus scott/tiger@localhost:1521/FREEPDB1