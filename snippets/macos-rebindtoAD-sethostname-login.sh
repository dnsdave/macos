#!/bin/bash
#SET VARIABLES
DomainAdmin="administrator"
DomainAdminPassword="TR@dmin"
ADUsername="administrator"
ADUserPassword="TR@dmin"
HostName="try-313-642-3"

#UNCOMMENT NEXT LINE FOR INTERACTIVITY
#read -p "What do you want to name your computer? " HostName

#DISABLE FILEVAULT
/usr/bin/fdesetup disable
#UNBIND FROM AD BEFORE RENAMING HOST
dsconfigad -f -r -u $DomainAdmin
#RENAME HOST
scutil --set HostName "$HostName.local"
scutil --set LocalHostName $HostName
scutil --set ComputerName $HostName
#BIND TO AD
dsconfigad -a $HostName -u $DomainAdmin -ou "CN=Computers,DC=school,DC=tworiverspcs,DC=org" -domain SCHOOL.TWORIVERSPCS.ORG -mobile enable -mobileconfirm disable -groups "Domain Admins"
#PRE-DEPLOYMENT USER LOGIN
sudo /System/Library/CoreServices/ManagedClient.app/Contents/Resources/createmobileaccount -D -n $ADUsername -p $ADUserPassword
#CACHE CREDENTIALS FOR OFFSITE LOGIN
sudo dscacheutil -q user -a name $ADUsername