FROM wnameless/oracle-xe-11g
MAINTAINER henrik.hedlund@knowit.no

ADD adduser.sql /tmp/
ADD adduser.sh /tmp/

ENV ORACLE_HOME /u01/app/oracle/product/11.2.0/xe

CMD sed -i -E "s/HOST = [^)]+/HOST = $HOSTNAME/g" /u01/app/oracle/product/11.2.0/xe/network/admin/listener.ora; \
	service oracle-xe start; \
	/tmp/adduser.sh; \
	rm /tmp/adduser.sh; \
	/usr/sbin/sshd -D