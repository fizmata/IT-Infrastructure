## Restoration manual
If you're reading this every has gone to hell, don't worry I worked hard so now you don't have to.

 **NOTE**: all the code is tested in settings of class ICA0002 and is not fully suitable for real life use.

### Getting ready for recovery
Ansible version 2.9.x required
server instances need to be configured in hosts file
variables are located in /group_vars/all.yaml

for deleted VM's change ports and sql host adress in /group_vars/all.yaml

### For newbies
If you have no idea what service is down, or what service even is take these steps, they won't break anything, but will take extra time:
1. run `ansible-playbook redeploy.yaml`
1. run `ansible-galaxy collection install community.mysql`
1. run `ansible-playbook restoreDB.yaml`
1. run `ansible-playbook restore_grafana.yaml`

### For more experienced
To redeploy individual services use tags
- nginx `ansible-playbook infra.yaml -t nginx`
- agama `ansible-playbook infra.yaml -t agama`
- mysql `ansible-playbook infra.yaml -t mysql`
- bind `ansible-playbook infra.yaml -t dns`
- prometheus `ansible-playbook infra.yaml -t prometheus`
- influxdb `ansible-playbook redeploy.yaml -t influxdb`
- grafana `ansible-playbook redeploy.yaml -t grafana`


### Restoring mysql db
This can be accomplished by running `ansible-playbook restoreDB.yaml`
**NOTE**:script expects `/home/backup/restore/` to be empty


### Restoring grafana
This can be accomplished by running `ansible-playbook restore_grafana.yaml`
**NOTE**:script expects `/home/backup/restore/` to be empty

### Restoring grafana in docker
This can be accomplished by running `ansible-playbook restore_grafana_docker.yaml`
**NOTE**:script expects `/home/backup/restore/` to be empty
