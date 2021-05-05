#!/bin/bash

path='/var/lib/jenkins/workspace/ansible-config-mgt_'$current_env
path+='/roles'
sudo sed -i -e "/roles_path = \/[a-z]*\/*/a\roles_path = $path" -e "/roles_path = \/[a-z]*\/*/d" /etc/ansible/ansible.cfg

