docker exec -it oracle-23c sqlplus sys/foo@FREE as sysdba
docker exec -it oracle-23c sqlplus system/foo@FREE
docker exec -it oracle-23c sqlplus pdbadmin/foo@FREEPDB1
docker exec -it oracle-23c sqlplus eoda/foo@FREEPDB1
docker exec -it oracle-23c sqlplus scott/tiger@FREEPDB1

docker exec -it oracle-23c bash
sqlplus / as sysdba
sqlplus eoda/foo@FREEPDB1
sqlplus scott/tiger@localhost:1521/FREEPDB1

# commonly used logins
docker exec -it oracle-23c sqlplus eoda/foo@FREEPDB1

# in sqlplus
define PDB=FREEPDB1
-- Switch containers to the PDB
alter session set container=&&PDB;

# switch connection
connect eoda/foo@FREEPDB1
connect scott/tiger@FREEPDB1

# fix spfile
!rm $ORACLE_HOME/dbs/spfileFREE.ora
startup
show parameter spfile;
create spfile from pfile;
startup force;
show parameter target;
alter system set memory_target=368M scope=spfile;