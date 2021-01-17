## Restoration manual
If you're reading this every has gone to hell, don't worry I worked hard so now you don't have to.

 **NOTE**: all the code is tested in settings of class ICA0002 and is not fully suitable for real life use.

### Getting ready for recovery


### For newbies
If you have no idea what service is down, or what service even is take these steps, they won't break anything, but will take extra time:
1. run `ansible-playbook redeploy.yaml`
1. run `ansible-galaxy collection install community.mysql`
1. run `ansible-playbook restoreDB.yaml`
1. run `ansible-playbook restore_grafana.yaml`

### For more experienced
To redeploy individual services use tags
- nginx `ansible-playbook redeploy.yaml -t nginx`
- uwsgi `ansible-playbook redeploy.yaml -t uwsgi`
- agama `ansible-playbook redeploy.yaml -t agama`
- mysql `ansible-playbook redeploy.yaml -t mysql`
- bind `ansible-playbook redeploy.yaml -t dns`
- prometheus `ansible-playbook redeploy.yaml -t prometheus`
- influxdb `ansible-playbook redeploy.yaml -t influxdb`
- grafana `ansible-playbook redeploy.yaml -t grafana`
