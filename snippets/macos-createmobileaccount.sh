#!/bin/bash
adminUsername="administrator"
adminPassword="TR@dmin"
USERNAME="administrator"
USERPASSWORD="TR@dmin"
/System/Library/CoreServices/ManagedClient.app/Contents/Resources/createmobileaccount -D -n $USERNAME  -p $USERPASSWORD

#-a $adminUsername -U $adminPassword 
dscacheutil -q user -a name $USERNAME
