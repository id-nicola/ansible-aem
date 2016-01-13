#!/usr/bin/env bash
sudo chmod 775 get_packages-6_0.sh
sudo chmod 775 get_packages-6_1.sh

PS3='Install AEM version : '
options=("AEM 6.0 [1]" "AEM 6.1 [2]" "Quit [3]")
select opt in "${options[@]}"
do
    case $opt in
        "AEM 6.0 [1]")
            ./get_packages-6_0.sh
            break
        ;;
        "AEM 6.1 [2]")
            ./get_packages-6_1.sh
            break
        ;;
        "Quit [3]")
            exit
        ;;
        *) echo Invalid option;;
    esac
done

cp ansible-aem/playbook.yml.default ansible-aem/playbook.yml
cp ansible-aem/roles/aem-install/vars/main.yml.default ansible-aem/roles/aem-install/vars/main.yml
cp ansible-aem/roles/java/vars/main.yml.default ansible-aem/roles/java/vars/main.yml
