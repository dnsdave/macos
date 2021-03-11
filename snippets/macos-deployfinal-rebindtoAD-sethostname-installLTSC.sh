#!/bin/bash
profiles renew -type enrollment
#unbind from AD
dsconfigad -f -r -u "administrator"
#hname=""
read -p "What do you want to name your computer? " hname
scutil --set HostName "$hname.local"
scutil --set LocalHostName "$hname"
scutil --set ComputerName "$hname"
#bind to AD
dsconfigad -a $hname -u "administrator" -ou "CN=Computers,DC=school,DC=tworiverspcs,DC=org" -domain SCHOOL.TWORIVERSPCS.ORG -mobile enable -mobileconfirm disable -groups "Domain Admins"

# set variables
serverip="10.41.0.33"
dlname="cw.zip"
# serverpath=""
# dlpath=""
# uninstall ScreenConnect
launchctl unload /Library/LaunchDaemons/screenconnect*
rm -rf /opt/screenconnect*
rm -rf /Library/LaunchDaemons/screenconnect*
launchctl unload /Library/LaunchDaemons/connectwisecontrol*
rm -rf /opt/connectwisecontrol*
rm -rf /Library/LaunchDaemons/connectwisecontrol*
# uninstall LT
sh /usr/local/ltechagent/uninstaller.sh
# mount the local file share and copy the installer files to shared local resources
mkdir /Volumes/SHARES-YOUNG
mount_smbfs //dnsadmin@10.41.0.33/SHARES-YOUNG/ /Volumes/SHARES-YOUNG
cp -R /Volumes/SHARES-YOUNG/Temp/cw /Users/Shared/Provisioning
# unzip -o "$LabtechName"
# install LT and SC
installer -pkg "/Users/Shared/Provisioning/cw/lt.mpkg" -allowUntrusted -target /
# installer -pkg "/Users/Shared/Provisioning/cw/sc.pkg" -allowUntrusted -target /
diskutil umount /Volumes/SHARES-YOUNG