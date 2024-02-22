# need to create table space before running demo3 scripts
create tablespace assm
datafile '/tmp/ts_assm.dbf'
size 1m autoextend on next 1m
segment space management auto;
