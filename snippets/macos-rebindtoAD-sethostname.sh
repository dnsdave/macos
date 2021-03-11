#!/bin/bash
#unbind from AD
/usr/bin/fdesetup disable
dsconfigad -f -r -u "administrator"
hname="try-413-657-ln"
#read -p "What do you want to name your computer? " hname
scutil --set HostName "$hname.local"
scutil --set LocalHostName "$hname"
scutil --set ComputerName "$hname"
#bind to AD
dsconfigad -a $hname -u "administrator" -ou "CN=Computers,DC=school,DC=tworiverspcs,DC=org" -domain SCHOOL.TWORIVERSPCS.ORG -mobile enable -mobileconfirm disable -groups "Domain Admins"
