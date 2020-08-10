#!/bin/bash
# set variables
serverip="10.41.0.33"
dlname="cw.zip"
serverpath=""
dlpath=""
# uninstall ScreenConnect
sudo launchctl unload /Library/LaunchDaemons/screenconnect*
sudo rm -rf /opt/screenconnect*
sudo rm -rf /Library/LaunchDaemons/screenconnect*
sudo launchctl unload /Library/LaunchDaemons/connectwisecontrol*
sudo rm -rf /opt/connectwisecontrol*
sudo rm -rf /Library/LaunchDaemons/connectwisecontrol*
# uninstall LT
sudo  sh /usr/local/ltechagent/uninstaller.sh
# mount the local file share and copy the installer files to shared local resources
sudo mkdir /Volumes/SHARES-YOUNG
sudo mount_smbfs //dnsadmin@10.41.0.33/SHARES-YOUNG/ /Volumes/SHARES-YOUNG
sudo cp -R /Volumes/SHARES-YOUNG/Temp/cw /Users/Shared/Provisioning
# sudo unzip -o "$LabtechName"
# install LT and SC
sudo installer -pkg "/Users/Shared/Provisioning/cw/lt.mpkg" -allowUntrusted -target /
sudo installer -pkg "/Users/Shared/Provisioning/cw/sc.pkg" -allowUntrusted -target /