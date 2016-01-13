#!/usr/bin/env bash
CURR_DIR=$1
if [[ $# -eq 0 ]] ; then
    CURR_DIR=${PWD}
fi

echo $CURR_DIR
sudo chmod 775 $CURR_DIR/get_packages-6_0.sh
sudo chmod 775 $CURR_DIR/get_packages-6_1.sh

cp $CURR_DIR/playbook.yml.default ansible-aem/playbook.yml
cp $CURR_DIR/roles/aem-install/vars/main.yml.default ansible-aem/roles/aem-install/vars/main.yml
cp $CURR_DIR/roles/java/vars/main.yml.default ansible-aem/roles/java/vars/main.yml

PS3='Install AEM version : '
options=("AEM 6.0 [1]" "AEM 6.1 [2]" "Quit [3]")
select opt in "${options[@]}"
do
    case $opt in
        "AEM 6.0 [1]")
            exec $CURR_DIR/get_packages-6_0.sh
            break
        ;;
        "AEM 6.1 [2]")
            exec $CURR_DIR/get_packages-6_1.sh
            break
        ;;
        "Quit [3]")
            exit
        ;;
        *) echo Invalid option;;
    esac
done
