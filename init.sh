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
            echo "" >> $CURR_DIR/roles/aem-install/vars/main.yml
            echo "#AEM 6.0" >> $CURR_DIR/roles/aem-install/vars/main.yml
            echo "aem_package_zips: ['AEM-6.0-Service-Pack-3-6.0.SP3.zip']" >> $CURR_DIR/roles/aem-install/vars/main.yml
            echo "aem_package_names: ['aem-service-pkg-wrapper']" >> $CURR_DIR/roles/aem-install/vars/main.yml
            echo "cq_jarfile: app/cq-quickstart-6.0.0-standalone.jar" >> $CURR_DIR/roles/aem-install/vars/main.yml
            break
        ;;
        "AEM 6.1 [2]")
            exec $CURR_DIR/get_packages-6_1.sh
            echo "" >> $CURR_DIR/roles/aem-install/vars/main.yml
            echo "#AEM 6.1" >> $CURR_DIR/roles/aem-install/vars/main.yml
            echo "aem_package_zips: ['cq-6.1.0-hotfix-6449-1.2.zip', 'cq-6.1.0-hotfix-7085-1.0.zip', 'cq-6.1.0-hotfix-6446-1.0.zip', 'cq-6.1.0-hotfix-6500-1.5.zip', 'cq-6.1.0-hotfix-7700-2.2.zip', 'cq-6.1.0-hotfix-6972-1.0.zip', 'cq-6.1.0-hotfix-6640-1.4.zip', 'cq-6.1.0-hotfix-6680-1.2.zip', 'cq-6.1.0-hotfix-7285-1.0.zip', 'cq-6.1.0-hotfix-6570-1.3.zip', 'cq-6.1.0-featurepack-6563-1.0.0.zip']" >> $CURR_DIR/roles/aem-install/vars/main.yml
            echo "aem_package_names: ['cq-6.1.0-hotfix-6449', 'cq-5.6.1-hotfix-7085', 'cq-6.1.0-hotfix-6446', 'cq-6.1.0-hotfix-6500', 'cq-6.1.0-hotfix-7700', 'cq-6.1.0-hotfix-6972', 'cq-6.1.0-hotfix-6640', 'cq-6.1.0-hotfix-6680', 'cq-6.1.0-hotfix-7285', 'cq-6.1.0-hotfix-6570', 'cq-6.1.0-featurepack-6563']" >> $CURR_DIR/roles/aem-install/vars/main.yml
            echo "cq_jarfile:app/cq-quickstart-6.1.0-standalone-quickstart.jar" >> $CURR_DIR/roles/aem-install/vars/main.yml
            break
        ;;
        "Quit [3]")
            exit
        ;;
        *) echo Invalid option;;
    esac
done
