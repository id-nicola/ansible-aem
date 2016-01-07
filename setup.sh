#!/usr/bin/env bash
cp ansible-aem/playbook.yml.default playbook.yml
cp ansible-aem/roles/aem-install/vars/main.yml.default aem-install/vars/main.yml
cp ansible-aem/roles/java/vars/main.yml.default java/vars/main.yml