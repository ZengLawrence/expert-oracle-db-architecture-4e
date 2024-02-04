#!/bin/bash
for i in {1..25}
do
   sqlplus eoda/foo@FREEPDB1 @gen_load.sql &
done
