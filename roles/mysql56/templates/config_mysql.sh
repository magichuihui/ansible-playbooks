#!/bin/bash
# roles/mysql56/templates/config_mysql.sh

# Change MySQL root's password, etc.
mysql -uroot -h127.0.0.1 -e "UPDATE mysql.user SET password = password('{{ mysql_password }}'); DELETE FROM mysql.user WHERE user=''; FLUSH PRIVILEGES;"

mysql -uroot -p{{ mysql_password }} -h127.0.0.1 -e "CREATE USER 'repl'@'%' IDENTIFIED BY 'replication';GRANT REPLICATION SLAVE ON *.* TO 'repl'@'%';FLUSH PRIVILEGES;"

# host for LAN IP range
default_network={{ ansible_default_ipv4.network }}
hosts_range=${default_network%.0}.%

mysql -uroot -p{{ mysql_password }} -h127.0.0.1 -e "CREATE USER 'root'@'${hosts_range}' IDENTIFIED BY '{{ mysql_password }}';GRANT ALL PRIVILEGES ON *.* TO 'root'@'${hosts_range}';FLUSH PRIVILEGES;"

# Modify /etc/my.cnf
sed -i 's/^server_id=.*/server_id={{ ansible_default_ipv4.address.split(".") | last }}/g' /etc/my.cnf
sed -i 's/^report_host=.*/report_host={{ ansible_nodename }}/g' /etc/my.cnf




