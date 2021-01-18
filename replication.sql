STOP SLAVE;
CHANGE MASTER TO MASTER_HOST='<your-mysql-master-host>',
                 MASTER_USER='replication',
                 MASTER_PASSWORD='<your-replication-password>';
RESET SLAVE;
START SLAVE;
SHOW SLAVE STATUS\G
