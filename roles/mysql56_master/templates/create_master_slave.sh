#!/bin/bash
# roles/mysql56_master/templates/create_master_slave.sh

# Get master's IP address.
echo {{ group_names | list | join(",") }} | grep -wq "secondary" &> /dev/null
[ $? -eq 0 ] && master_ip="{{ hostvars[groups['master'][0]]['ansible_default_ipv4']['address'] }}" || master_ip="{{ hostvars[groups['secondary'][0]]['ansible_default_ipv4']['address'] }}"

# Lock master's table
mysql -uroot -p{{ mysql_password }} -h$master_ip -e "FLUSH TABLE WITH READ LOCK;"

# Get Master's log file and log position.
str=$(mysql -uroot -p{{ mysql_password }} -h${master_ip} -e "SHOW MASTER STATUS;" 2>/dev/null | grep mysql-bin)
arr=($str)
log_file=${arr[0]}
log_pos=${arr[1]}

# Change master 
mysql -uroot -p{{ mysql_password }} -h127.0.0.1 -e "CHANGE MASTER TO \
    MASTER_HOST='${master_ip}',\
    MASTER_USER='repl', \
    MASTER_PASSWORD='replication', \
    MASTER_LOG_FILE='${log_file}', \
    MASTER_LOG_POS=${log_pos}; \
    START SLAVE;"

# Unlock tables
mysql -uroot -p{{ mysql_password }} -h$master_ip -e "UNLOCK TABLES;"

