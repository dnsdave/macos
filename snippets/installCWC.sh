#!/bin/bash

curl -o /tmp/scclient.pkg 'https://screenconnect.dnsolutions.com/Bin/ConnectWiseControl.ClientSetup.pkg?e=Access&y=Guest&h=screenconnect.dnsolutions.com&p=8041&k=BgIAAACkAABSU0ExAAgAAAEAAQBNxmr%2fIrNcHjnVSjb3XZV2yDi2M62sLng8X81ciKi0AGrpKrp8aBpnF4iT0bdMqwbEwee%2fv0nUNsjcuLTu9lxJs1Dy8LR3pQX%2bUJj6Jlkllan5n3qMUu%2fbA0SxPI37XWNZaQq5SuiR%2b1WyA2LkObK2z8DPM6GuBBcLULoEf8rzx6xKEw%2buG1lwwqVgHCFlFdjyimyndt%2bi7Z%2bS%2feuS2X9D3JN%2fc0BzbPolO498qvo7C%2b3NgjV83WYPAcD3rdcyxCL97FUUtQ3Jps8Yg9jzRgZ6arpd5FghVxNUSR2hgmnq8JlJ7Kdik7otIW0oyzJvY1XUBdfhkJnLe2kGiDuplt%2fC&c=TwoRivers&c=&c=&c=&c=&c=&c=&c='

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