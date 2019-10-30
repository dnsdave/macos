#!/bin/bash




#APREP add to AD
dsconfigad -remove APREP.LOCAL -computer "AP-MBA-16059" -username "administrator" -password "nTBQTarX2Fyg"
dsconfigad -add APREP.LOCAL -computer "AP-MBA-16059" —mobile enable -username "administrator" -password "nTBQTarX2Fyg"
#TR-ES add and remove to OD
dsconfigldap -a trpcses.tworiverspcs.lan -c "tre-131001" -u "administrator" -p "TR@dmin" 
dsconfigldap -r trpcses.tworiverspcs.lan -c "tre-131001" -u "administrator" -p "TR@dmin" 
#TR-MS add and remove to OD
dsconfigldap -a trpcsms.tworiverspcs.lan -c "trm-231001" -u "administrator" -p "TR@dmin" 
dsconfigldap -r trpcsms.tworiverspcs.lan -c "trm-231001" -u "administrator" -p "TR@dmin" 
#TR-YOUNG add and remove to OD
dsconfigldap -a trpcsyoung.tworiverspcs.lan -c "try-331001" -u "tradmin" -p "TRPC$7221" 
dsconfigldap -r trpcsyoung.tworiverspcs.lan -c "try-331001" -u "tradmin" -p "TRPC$7221" 


#TR-ES Kyocera
lpadmin -E -p "TR-ES-FD" -v "lpd://10.31.2.200" -P "/Volumes/Servers/AFFA_ST_MFP_1.ppd" -o printer-is-shared=false; cupsenable "TR-ES-FD"; cupsaccept "TR-ES-FD";
lpadmin -E -p "TR-ES-FD" -v "lpd://10.31.2.200" -P "/Volumes/Servers/AFFA_ST_MFP_1.ppd" -o printer-is-shared=false; cupsenable "TR-ES-FD"; cupsaccept "TR-ES-FD";
lpadmin -E -p "TR-ES-FD" -v "lpd://10.31.2.200" -P "/Volumes/Servers/AFFA_ST_MFP_1.ppd" -o printer-is-shared=false; cupsenable "TR-ES-FD"; cupsaccept "TR-ES-FD";
#TR-MS Kyocera
lpadmin -E -p "TR-ES-FD" -v "lpd://10.31.2.200" -P "/Volumes/Servers/AFFA_ST_MFP_1.ppd" -o printer-is-shared=false; cupsenable "TR-ES-FD"; cupsaccept "TR-ES-FD";
lpadmin -E -p "TR-ES-FD" -v "lpd://10.31.2.200" -P "/Volumes/Servers/AFFA_ST_MFP_1.ppd" -o printer-is-shared=false; cupsenable "TR-ES-FD"; cupsaccept "TR-ES-FD";
#TR-Young Kyocera
lpadmin -E -p "TR-ES-FD" -v "lpd://10.31.2.200" -P "/Volumes/Servers/AFFA_ST_MFP_1.ppd" -o printer-is-shared=false; cupsenable "TR-ES-FD"; cupsaccept "TR-ES-FD";
lpadmin -E -p "TR-ES-FD" -v "lpd://10.31.2.200" -P "/Volumes/Servers/AFFA_ST_MFP_1.ppd" -o printer-is-shared=false; cupsenable "TR-ES-FD"; cupsaccept "TR-ES-FD";
#TR-MS Dell 2330DN Series
lpadmin -E -p "TR-ES-FD" -v "lpd://10.31.2.200" -P "/Volumes/Servers/AFFA_ST_MFP_1.ppd" -o printer-is-shared=false; cupsenable "TR-ES-FD"; cupsaccept "TR-ES-FD";
lpadmin -E -p "TR-ES-FD" -v "lpd://10.31.2.200" -P "/Volumes/Servers/AFFA_ST_MFP_1.ppd" -o printer-is-shared=false; cupsenable "TR-ES-FD"; cupsaccept "TR-ES-FD";
lpadmin -E -p "TR-ES-FD" -v "lpd://10.31.2.200" -P "/Volumes/Servers/AFFA_ST_MFP_1.ppd" -o printer-is-shared=false; cupsenable "TR-ES-FD"; cupsaccept "TR-ES-FD";
lpadmin -E -p "TR-ES-FD" -v "lpd://10.31.2.200" -P "/Volumes/Servers/AFFA_ST_MFP_1.ppd" -o printer-is-shared=false; cupsenable "TR-ES-FD"; cupsaccept "TR-ES-FD";
lpadmin -E -p "TR-ES-FD" -v "lpd://10.31.2.200" -P "/Volumes/Servers/AFFA_ST_MFP_1.ppd" -o printer-is-shared=false; cupsenable "TR-ES-FD"; cupsaccept "TR-ES-FD";
lpadmin -E -p "TR-ES-FD" -v "lpd://10.31.2.200" -P "/Volumes/Servers/AFFA_ST_MFP_1.ppd" -o printer-is-shared=false; cupsenable "TR-ES-FD"; cupsaccept "TR-ES-FD";
lpadmin -E -p "TR-ES-FD" -v "lpd://10.31.2.200" -P "/Volumes/Servers/AFFA_ST_MFP_1.ppd" -o printer-is-shared=false; cupsenable "TR-ES-FD"; cupsaccept "TR-ES-FD";
lpadmin -E -p "TR-ES-FD" -v "lpd://10.31.2.200" -P "/Volumes/Servers/AFFA_ST_MFP_1.ppd" -o printer-is-shared=false; cupsenable "TR-ES-FD"; cupsaccept "TR-ES-FD";
#TR-ES Dell 2330DN Series
lpadmin -E -p "TR-ES-FD" -v "lpd://10.31.2.200" -P "/Volumes/Servers/AFFA_ST_MFP_1.ppd" -o printer-is-shared=false; cupsenable "TR-ES-FD"; cupsaccept "TR-ES-FD";