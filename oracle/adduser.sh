export ORACLE_HOME=/u01/app/oracle/product/11.2.0/xe
export PATH=$ORACLE_HOME/bin:$PATH
export ORACLE_SID=XE
echo exit |sqlplus system/oracle @/tmp/adduser.sql
rm /tmp/adduser.sql