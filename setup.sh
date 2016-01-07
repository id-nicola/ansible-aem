#!/usr/bin/env bash
cp ansible-aem/playbook.yml.default ansible-aem/playbook.yml
cp ansible-aem/roles/aem-install/vars/main.yml.default ansible-aem/roles/aem-install/vars/main.yml
cp ansible-aem/roles/java/vars/main.yml.default ansible-aem/roles/java/vars/main.yml