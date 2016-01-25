#!/usr/bin/env bash
#Destination
DEST='./ansible-aem/roles/aem-install/files'

#Core
#Vulnerability in the Apache POI Library (Hot fix 6449 *)
HF_6449='https://www.adobeaemcloud.com/content/companies/public/adobe/packages/aem610/hotfix/cq-6.1.0-hotfix-6449/jcr%3acontent/package/file.res/cq-6.1.0-hotfix-6449-1.2.zip'
wget $HF_6449 -P $DEST
#XSS vulnerability (Hot fix 7085 *)
HF_7085='https://www.adobeaemcloud.com/content/companies/public/adobe/packages/cq610/hotfix/cq-6.1.0-hotfix-7085/jcr%3acontent/package/file.res/cq-6.1.0-hotfix-7085-1.0.zip'
wget $HF_7085 -P $DEST
#Webdav security fix (Hot fix 6446 *)
HF_6446='https://www.adobeaemcloud.com/content/companies/public/adobe/packages/aem610/hotfix/cq-6.1.0-hotfix-6446/jcr%3acontent/package/file.res/cq-6.1.0-hotfix-6446-1.0.zip'
wget $HF_6446 -P $DEST
#XSS vulnerability in the Assets user interface (Hot fix 6500 *)
HF_6500='https://www.adobeaemcloud.com/content/companies/public/adobe/packages/aem610/hotfix/cq-6.1.0-hotfix-6500/jcr%3acontent/package/file.res/cq-6.1.0-hotfix-6500-1.5.zip'
wget $HF_6500 -P $DEST


#CRX - Oak 1.2.7 (Hot fix 7700 *)
HF_7700='https://www.adobeaemcloud.com/content/companies/public/adobe/packages/cq610/hotfix/cq-6.1.0-hotfix-7700/jcr%3acontent/package/file.res/cq-6.1.0-hotfix-7700-2.2.zip'
wget $HF_7700 -P $DEST


#Workflow - SegmentNotFoundException in workflow processing (Hot fix 6972 *)
HF_6972='https://www.adobeaemcloud.com/content/companies/public/adobe/packages/cq610/hotfix/cq-6.1.0-hotfix-6972/jcr%3acontent/package/file.res/cq-6.1.0-hotfix-6972-1.0.zip'
wget $HF_6972 -P $DEST


#Miscellaneous
#Installing packages with ResourceProviders can cause installation to fail (Hot fix 6640 *)
HF_6640='https://www.adobeaemcloud.com/content/companies/public/adobe/packages/aem610/hotfix/cq-6.1.0-hotfix-6640/jcr%3acontent/package/file.res/cq-6.1.0-hotfix-6640-1.4.zip'
wget $HF_6640 -P $DEST
#The web console sometimes becomes unusable after package installation (Hot fix 6680 *)
HF_6680='https://www.adobeaemcloud.com/content/companies/public/adobe/packages/aem610/hotfix/cq-6.1.0-hotfix-6680/jcr%3acontent/package/file.res/cq-6.1.0-hotfix-6680-1.2.zip'
wget $HF_6680 -P $DEST


#Sites - Toolbar buttons on Websites Search do not consider the ACL on all selected Rows (Hot fix 7285 *)
HF_7285='https://www.adobeaemcloud.com/content/companies/public/adobe/packages/cq610/hotfix/cq-6.1.0-hotfix-7285/jcr%3acontent/package/file.res/cq-6.1.0-hotfix-7285-1.0.zip'
wget $HF_7285 -P $DEST


#Integrations - Hot fix pack for various Adobe Target Integration fixes (Hot fix 6570 *)
HF_6570='https://www.adobeaemcloud.com/content/companies/public/adobe/packages/cq610/hotfix/cq-6.1.0-hotfix-6570/jcr%3acontent/package/file.res/cq-6.1.0-hotfix-6570-1.3.zip'
wget $HF_6570 -P $DEST

#Sites - The Touch-optimized UI Update Pack (Feature Pack 6563)
FP_6563='https://www.adobeaemcloud.com/content/companies/public/adobe/packages/cq610/featurepack/cq-6.1.0-featurepack-6563/jcr%3acontent/package/file.res/cq-6.1.0-featurepack-6563-1.0.0.zip'
wget $FP_6563 -P $DEST

#Communities - This fix pack contains the latest set of fixes for AEM Communities 6.1 features (cq-socialcommunities-pkg * Version 1.7.199)
#https://www.adobeaemcloud.com/content/companies/public/adobe/packages/cq610/social/hotfix/cq-socialcommunities-pkg/jcr%3acontent/package/file.res/AEM-6.1-Communities-HotFix-1.7.199.zip


#Forms - Includes enhancements and bug fixes in various components of AEM 6.1 Forms (Linux) (Hot fix 6717 *)
#https://www.adobeaemcloud.com/content/companies/public/adobe/packages/aem61/hotfix/fd/adobe-aemfd-linux-pkg/jcr%3acontent/package/file.res/AEM-FORMS-6.1-LX-Hotfix-6717-2.2.4.zip