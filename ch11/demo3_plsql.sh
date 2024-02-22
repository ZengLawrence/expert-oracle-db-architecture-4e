#!/bin/bash

for i in `seq 1 $*`
do
	echo 'exec do_sql' | sqlplus eoda/foo@FREEPDB1  &
done
wait
