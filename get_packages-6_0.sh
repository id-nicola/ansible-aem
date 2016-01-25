#!/usr/bin/env bash
#Destination
DEST='./ansible-aem/roles/aem-install/files/'

#SP3
SP3='https://www.adobeaemcloud.com/content/companies/public/adobe/packages/cq600/servicepack/AEM-6.0-Service-Pack-3/jcr%3acontent/package/file.res/AEM%206.0%20Service%20Pack%203-6.0.SP3.zip'
wget $SP3 -P $DEST
mv $DEST'AEM 6.0 Service Pack 3-6.0.SP3.zip'  $DEST'AEM-6.0-Service-Pack-3-6.0.SP3.zip'