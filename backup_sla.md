## Backup coverage
### Infrastructure diagram

![](my_infra.png)

### What is backed up:
- mysql Database entries - sensitive user data
- Grafana - requires manual setup
- Ansible repo - has all recovery code and manuals

### What is redeployed:
- Nginx
- uwsgi
- agama
- mysql
- Prometheus
- Telegraf
- InfluxDB

### What is **NOT** backed up:
- InfluxDB entries
- Prometheus monitoring data
- any type of logs or monitoring data in general

## Backup RPO (recovery point objective)
I'm thinking new backup every 3 days, increment every day would be nice but this hugely depends on load on machine and their resources. At What time to do backup depends on user activity.

## Versioning and retention
Life length of each backup 10 days, this gives enough time to have at least 3 backups at hand at any time and leaves us with 1 day to test newest backup before oldest, previously tested backup is deleted.

## Usability
at every third backup date, restore latest backup, remove forth the oldest. This way we always have at least 1 working backup and we don't delete it unless we are sure we have newer.

## Restoration criteria
When everything crashes and burns, hopefully never.

## Backup RTO
System at the current level can be recovered from backups in less than an hour.
