#!/bin/bash

curl -o /tmp/scclient.pkg $screenconnectURL

tgts=($(ls /opt | grep 'screenconnect.*')); 
	for i in $tgts; 
	do rm -rf /opt/$i ; 
	launchctl remove ${i%.app} ; 
	killall ScreenConnect\ Client ; 
	killall ConnectWiseControl\ Client ; 
	done

installer -pkg /tmp/scclient.pkg -tgt /

pat='s=[0-9a-fA-F]\{8\}-[0-9a-fA-F]\{4\}-[0-9a-fA-F]\{4\}-[0-9a-fA-F]\{4\}-[0-9a-fA-F]\{12\}'; 
if [ -d '/opt/connectwisecontrol-83d53f43b276635f.app' ]; 
	then grep -o $pat /opt/connectwisecontrol-83d53f43b276635f.app/Contents/Resources/ClientLaunchParameters.txt.lproj/locversion.plist; 
	else grep -o $pat /opt/screenconnect-83d53f43b276635f.app/Contents/Resources/ClientLaunchParameters.txt; 
	fi