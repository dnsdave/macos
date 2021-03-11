#set download location
DownloadServer="https://osxdownload.dnsolutions.com"
#set CSV name for print code list
CSVName="trprintcodes.csv"

#find all users on system and create variables to run the commands on each user
Usernamelist=()
while IFS= read -r line; do
    Usernamelist+=( "$line" )
done < <( dscl . list /Users | grep -v '_' )
echo $Usernamelist
my_array_length=${#Usernamelist[@]}
echo $my_array_length
echo
cd /Users/Shared;
echo "You are about to download $CSVName to this folder:"
pwd
echo
curl -O -L -k "$DownloadServer/TwoRivers/$CSVName"
echo

#add usernames to array as variables
for u in "${Usernamelist[@]}"
do
if [[ "$u" != "root" && "$u" != "daemon" && "$u" != "root" && "$u" != "nobody" && "$u" != "dnsadmin" && "$u" != "tradmin" ]]; then
#determine code for user
c=`sed -nE -e "/^$u, ?/s/^.+, ?//p" /Users/Shared/$CSVName`
if [ ! -z "$c" ]; then
echo
echo "The print code for $u is $c"
echo
cd /Users/$u/Library/Preferences
echo "You are about to download the plist files to this folder:"
pwd
echo
#set variables for printers
ESL1BW = "com.apple.print.custompresets.forprinter.4THLO-RM100-6053-BW-Duplex.plist"
ESL1BWD = "com.apple.print.custompresets.forprinter.4THLO-RM100-6053-BW.plist"
ESL1COL = "com.apple.print.custompresets.forprinter.4THLO-RM100-6053-Color-Duplex.plist"
ESL1COLD = "com.apple.print.custompresets.forprinter.4THLO-RM100-6053-Color.plist"
ESL2BW = "com.apple.print.custompresets.forprinter.4THLO-RM101-M2640-BW-Duplex.plist"
ESL2BWD = "com.apple.print.custompresets.forprinter.4THLO-RM101-M2640-BW.plist"
ESL2COL = "com.apple.print.custompresets.forprinter.4THLO-RM101-M2640-Color-Duplex.plist"
ESL2COLD = "com.apple.print.custompresets.forprinter.4THLO-RM101-M2640-Color.plist"
ESL3BW = "com.apple.print.custompresets.forprinter.4THLO-RM107-M6630-BW-Duplex.plist"
ESL3BWD = "com.apple.print.custompresets.forprinter.4THLO-RM107-M6630-BW.plist"
ESL3COL = "com.apple.print.custompresets.forprinter.4THLO-RM107-M6630-Color-Duplex.plist"
ESL3COLD = "com.apple.print.custompresets.forprinter.4THLO-RM107-M6630-Color.plist"
ESLESBW = "com.apple.print.custompresets.forprinter.4THLO-RM300-8353-BW-Duplex.plist"
ESLESBWD = "com.apple.print.custompresets.forprinter.4THLO-RM300-8353-BW.plist"
ESLESCOL = "com.apple.print.custompresets.forprinter.4THLO-RM300-8353-Color-Duplex.plist"
ESLESCOLD = "com.apple.print.custompresets.forprinter.4THLO-RM300-8353-Color.plist"
ESU1BW = "com.apple.print.custompresets.forprinter.4THUP-RM100-M6630-BW-Duplex.plist"
ESU1BWD = "com.apple.print.custompresets.forprinter.4THUP-RM100-M6630-BW.plist"
ESU1COL = "com.apple.print.custompresets.forprinter.4THUP-RM100-M6630-Color-Duplex.plist"
ESU1COLD = "com.apple.print.custompresets.forprinter.4THUP-RM100-M6630-Color.plist"
ESU2BW = "com.apple.print.custompresets.forprinter.4THUP-RM205-6053-BW-Duplex.plist"
ESU2BWD = "com.apple.print.custompresets.forprinter.4THUP-RM205-6053-BW.plist"
ESU2COL = "com.apple.print.custompresets.forprinter.4THUP-RM205-6053-Color-Duplex.plist"
ESU2COLD = "com.apple.print.custompresets.forprinter.4THUP-RM205-6053-Color.plist"
YGES1BW = "com.apple.print.custompresets.forprinter.YGMS-RM112-8353-BW-Duplex.plist"
YGES1BWD = "com.apple.print.custompresets.forprinter.YGMS-RM112-8353-BW.plist"
YGES1COL = "com.apple.print.custompresets.forprinter.YGMS-RM112-8353-Color-Duplex.plist"
YGES1COLD = "com.apple.print.custompresets.forprinter.YGMS-RM112-8353-Color.plist"
YGES2BW = "com.apple.print.custompresets.forprinter.YGMS-RM124-M6630-BW-Duplex.plist"
YGES2BWD = "com.apple.print.custompresets.forprinter.YGMS-RM124-M6630-BW.plist"
YGES2COL = "com.apple.print.custompresets.forprinter.YGMS-RM124-M6630-Color-Duplex.plist"
YGES2COLD = "com.apple.print.custompresets.forprinter.YGMS-RM124-M6630-Color.plist"
YGES3BW = "com.apple.print.custompresets.forprinter.YGES-RM132-M6630-BW-Duplex.plist"
YGES3BWD = "com.apple.print.custompresets.forprinter.YGES-RM132-M6630-BW.plist"
YGMS1BW = "com.apple.print.custompresets.forprinter.YGES-RM132-M6630-Color-Duplex.plist"
YGMS1BWD = "com.apple.print.custompresets.forprinter.YGES-RM132-M6630-Color.plist"
YGMS1COL = "com.apple.print.custompresets.forprinter.YGES-RM151-6002-BW-Duplex.plist"
YGMS1COLD = "com.apple.print.custompresets.forprinter.YGES-RM151-6002-BW.plist"
YGMS2BW = "com.apple.print.custompresets.forprinter.YGES-RM240-8353-BW-Duplex.plist"
YGMS2BWD = "com.apple.print.custompresets.forprinter.YGES-RM240-8353-BW.plist"
YGMS2COL = "com.apple.print.custompresets.forprinter.YGES-RM240-8353-Color-Duplex.plist"
YGMS2COLD = "com.apple.print.custompresets.forprinter.YGES-RM240-8353-Color.plist"

#download all the plist files for system printer presets
curl -O -L -k "$DownloadServer/TwoRivers/$ESL1BW"
curl -O -L -k "$DownloadServer/TwoRivers/$ESL1BWD"
curl -O -L -k "$DownloadServer/TwoRivers/$ESL1COL"
curl -O -L -k "$DownloadServer/TwoRivers/$ESL1COLD"
curl -O -L -k "$DownloadServer/TwoRivers/$ESL2BW"
curl -O -L -k "$DownloadServer/TwoRivers/$ESL2BWD"
curl -O -L -k "$DownloadServer/TwoRivers/$ESL2COL"
curl -O -L -k "$DownloadServer/TwoRivers/$ESL2COLD"
curl -O -L -k "$DownloadServer/TwoRivers/$ESL3BW"
curl -O -L -k "$DownloadServer/TwoRivers/$ESL3BWD"
curl -O -L -k "$DownloadServer/TwoRivers/$ESL3COL"
curl -O -L -k "$DownloadServer/TwoRivers/$ESL3COLD"
curl -O -L -k "$DownloadServer/TwoRivers/$ESLESBW"
curl -O -L -k "$DownloadServer/TwoRivers/$ESLESBWD"
curl -O -L -k "$DownloadServer/TwoRivers/$ESLESCOL"
curl -O -L -k "$DownloadServer/TwoRivers/$ESLESCOLD"
curl -O -L -k "$DownloadServer/TwoRivers/$ESU1BW"
curl -O -L -k "$DownloadServer/TwoRivers/$ESU1BWD"
curl -O -L -k "$DownloadServer/TwoRivers/$ESU1COL"
curl -O -L -k "$DownloadServer/TwoRivers/$ESU1COLD"
curl -O -L -k "$DownloadServer/TwoRivers/$ESU2BW"
curl -O -L -k "$DownloadServer/TwoRivers/$ESU2BWD"
curl -O -L -k "$DownloadServer/TwoRivers/$ESU2COL"
curl -O -L -k "$DownloadServer/TwoRivers/$ESU2COLD"
curl -O -L -k "$DownloadServer/TwoRivers/$YGES1BW"
curl -O -L -k "$DownloadServer/TwoRivers/$YGES1BWD"
curl -O -L -k "$DownloadServer/TwoRivers/$YGES1COL"
curl -O -L -k "$DownloadServer/TwoRivers/$YGES1COLD"
curl -O -L -k "$DownloadServer/TwoRivers/$YGES2BW"
curl -O -L -k "$DownloadServer/TwoRivers/$YGES2BWD"
curl -O -L -k "$DownloadServer/TwoRivers/$YGES2COL"
curl -O -L -k "$DownloadServer/TwoRivers/$YGES2COLD"
curl -O -L -k "$DownloadServer/TwoRivers/$YGES3BW"
curl -O -L -k "$DownloadServer/TwoRivers/$YGES3BWD"
curl -O -L -k "$DownloadServer/TwoRivers/$YGMS1BW"
curl -O -L -k "$DownloadServer/TwoRivers/$YGMS1BWD"
curl -O -L -k "$DownloadServer/TwoRivers/$YGMS1COL"
curl -O -L -k "$DownloadServer/TwoRivers/$YGMS1COLD"
curl -O -L -k "$DownloadServer/TwoRivers/$YGMS2BW"
curl -O -L -k "$DownloadServer/TwoRivers/$YGMS2BWD"
curl -O -L -k "$DownloadServer/TwoRivers/$YGMS2COL"
curl -O -L -k "$DownloadServer/TwoRivers/$YGMS2COLD"

#print out the list of plist files for error checking, making sure all printers are addressed
echo
echo
echo
echo "Here is a list of all the files you just downloaded:"
ls -la | grep "forprinter"
echo
echo
echo
echo "Now we will set the Job Accounting Code for each preset"
/usr/libexec/PlistBuddy -c "Set :com.apple.print.lastUsedSettingsPref:com.apple.print.preset.settings:ManagementCodeValue 8703" ~/Library/Preferences/$ESL1BW
/usr/libexec/PlistBuddy -c "Set :com.apple.print.lastUsedSettingsPref:com.apple.print.preset.settings:ManagementCodeValue 8703" ~/Library/Preferences/$ESL1BWD
/usr/libexec/PlistBuddy -c "Set :com.apple.print.lastUsedSettingsPref:com.apple.print.preset.settings:ManagementCodeValue 8703" ~/Library/Preferences/$ESL1COL
/usr/libexec/PlistBuddy -c "Set :com.apple.print.lastUsedSettingsPref:com.apple.print.preset.settings:ManagementCodeValue 8703" ~/Library/Preferences/$ESL1COLD
/usr/libexec/PlistBuddy -c "Set :com.apple.print.lastUsedSettingsPref:com.apple.print.preset.settings:ManagementCodeValue 8703" ~/Library/Preferences/$ESL2BW
/usr/libexec/PlistBuddy -c "Set :com.apple.print.lastUsedSettingsPref:com.apple.print.preset.settings:ManagementCodeValue 8703" ~/Library/Preferences/$ESL2BWD
/usr/libexec/PlistBuddy -c "Set :com.apple.print.lastUsedSettingsPref:com.apple.print.preset.settings:ManagementCodeValue 8703" ~/Library/Preferences/$ESL2COL
/usr/libexec/PlistBuddy -c "Set :com.apple.print.lastUsedSettingsPref:com.apple.print.preset.settings:ManagementCodeValue 8703" ~/Library/Preferences/$ESL2COLD
/usr/libexec/PlistBuddy -c "Set :com.apple.print.lastUsedSettingsPref:com.apple.print.preset.settings:ManagementCodeValue 8703" ~/Library/Preferences/$ESL3BW
/usr/libexec/PlistBuddy -c "Set :com.apple.print.lastUsedSettingsPref:com.apple.print.preset.settings:ManagementCodeValue 8703" ~/Library/Preferences/$ESL3BWD
/usr/libexec/PlistBuddy -c "Set :com.apple.print.lastUsedSettingsPref:com.apple.print.preset.settings:ManagementCodeValue 8703" ~/Library/Preferences/$ESL3COL
/usr/libexec/PlistBuddy -c "Set :com.apple.print.lastUsedSettingsPref:com.apple.print.preset.settings:ManagementCodeValue 8703" ~/Library/Preferences/$ESL3COLD
/usr/libexec/PlistBuddy -c "Set :com.apple.print.lastUsedSettingsPref:com.apple.print.preset.settings:ManagementCodeValue 8703" ~/Library/Preferences/$ESLESBW
/usr/libexec/PlistBuddy -c "Set :com.apple.print.lastUsedSettingsPref:com.apple.print.preset.settings:ManagementCodeValue 8703" ~/Library/Preferences/$ESLESBWD
/usr/libexec/PlistBuddy -c "Set :com.apple.print.lastUsedSettingsPref:com.apple.print.preset.settings:ManagementCodeValue 8703" ~/Library/Preferences/$ESLESCOL
/usr/libexec/PlistBuddy -c "Set :com.apple.print.lastUsedSettingsPref:com.apple.print.preset.settings:ManagementCodeValue 8703" ~/Library/Preferences/$ESLESCOLD
/usr/libexec/PlistBuddy -c "Set :com.apple.print.lastUsedSettingsPref:com.apple.print.preset.settings:ManagementCodeValue 8703" ~/Library/Preferences/$ESU1BW
/usr/libexec/PlistBuddy -c "Set :com.apple.print.lastUsedSettingsPref:com.apple.print.preset.settings:ManagementCodeValue 8703" ~/Library/Preferences/$ESU1BWD
/usr/libexec/PlistBuddy -c "Set :com.apple.print.lastUsedSettingsPref:com.apple.print.preset.settings:ManagementCodeValue 8703" ~/Library/Preferences/$ESU1COL
/usr/libexec/PlistBuddy -c "Set :com.apple.print.lastUsedSettingsPref:com.apple.print.preset.settings:ManagementCodeValue 8703" ~/Library/Preferences/$ESU1COLD
/usr/libexec/PlistBuddy -c "Set :com.apple.print.lastUsedSettingsPref:com.apple.print.preset.settings:ManagementCodeValue 8703" ~/Library/Preferences/$ESU2BW
/usr/libexec/PlistBuddy -c "Set :com.apple.print.lastUsedSettingsPref:com.apple.print.preset.settings:ManagementCodeValue 8703" ~/Library/Preferences/$ESU2BWD
/usr/libexec/PlistBuddy -c "Set :com.apple.print.lastUsedSettingsPref:com.apple.print.preset.settings:ManagementCodeValue 8703" ~/Library/Preferences/$ESU2COL
/usr/libexec/PlistBuddy -c "Set :com.apple.print.lastUsedSettingsPref:com.apple.print.preset.settings:ManagementCodeValue 8703" ~/Library/Preferences/$ESU2COLD
/usr/libexec/PlistBuddy -c "Set :com.apple.print.lastUsedSettingsPref:com.apple.print.preset.settings:ManagementCodeValue 8703" ~/Library/Preferences/$YGES1BW
/usr/libexec/PlistBuddy -c "Set :com.apple.print.lastUsedSettingsPref:com.apple.print.preset.settings:ManagementCodeValue 8703" ~/Library/Preferences/$YGES1BWD
/usr/libexec/PlistBuddy -c "Set :com.apple.print.lastUsedSettingsPref:com.apple.print.preset.settings:ManagementCodeValue 8703" ~/Library/Preferences/$YGES1COL
/usr/libexec/PlistBuddy -c "Set :com.apple.print.lastUsedSettingsPref:com.apple.print.preset.settings:ManagementCodeValue 8703" ~/Library/Preferences/$YGES1COLD
/usr/libexec/PlistBuddy -c "Set :com.apple.print.lastUsedSettingsPref:com.apple.print.preset.settings:ManagementCodeValue 8703" ~/Library/Preferences/$YGES2BW
/usr/libexec/PlistBuddy -c "Set :com.apple.print.lastUsedSettingsPref:com.apple.print.preset.settings:ManagementCodeValue 8703" ~/Library/Preferences/$YGES2BWD
/usr/libexec/PlistBuddy -c "Set :com.apple.print.lastUsedSettingsPref:com.apple.print.preset.settings:ManagementCodeValue 8703" ~/Library/Preferences/$YGES2COL
/usr/libexec/PlistBuddy -c "Set :com.apple.print.lastUsedSettingsPref:com.apple.print.preset.settings:ManagementCodeValue 8703" ~/Library/Preferences/$YGES2COLD
/usr/libexec/PlistBuddy -c "Set :com.apple.print.lastUsedSettingsPref:com.apple.print.preset.settings:ManagementCodeValue 8703" ~/Library/Preferences/$YGES3BW
/usr/libexec/PlistBuddy -c "Set :com.apple.print.lastUsedSettingsPref:com.apple.print.preset.settings:ManagementCodeValue 8703" ~/Library/Preferences/$YGES3BWD
/usr/libexec/PlistBuddy -c "Set :com.apple.print.lastUsedSettingsPref:com.apple.print.preset.settings:ManagementCodeValue 8703" ~/Library/Preferences/$YGMS1BW
/usr/libexec/PlistBuddy -c "Set :com.apple.print.lastUsedSettingsPref:com.apple.print.preset.settings:ManagementCodeValue 8703" ~/Library/Preferences/$YGMS1BWD
/usr/libexec/PlistBuddy -c "Set :com.apple.print.lastUsedSettingsPref:com.apple.print.preset.settings:ManagementCodeValue 8703" ~/Library/Preferences/$YGMS1COL
/usr/libexec/PlistBuddy -c "Set :com.apple.print.lastUsedSettingsPref:com.apple.print.preset.settings:ManagementCodeValue 8703" ~/Library/Preferences/$YGMS1COLD
/usr/libexec/PlistBuddy -c "Set :com.apple.print.lastUsedSettingsPref:com.apple.print.preset.settings:ManagementCodeValue 8703" ~/Library/Preferences/$YGMS2BW
/usr/libexec/PlistBuddy -c "Set :com.apple.print.lastUsedSettingsPref:com.apple.print.preset.settings:ManagementCodeValue 8703" ~/Library/Preferences/$YGMS2BWD
/usr/libexec/PlistBuddy -c "Set :com.apple.print.lastUsedSettingsPref:com.apple.print.preset.settings:ManagementCodeValue 8703" ~/Library/Preferences/$YGMS2COL
/usr/libexec/PlistBuddy -c "Set :com.apple.print.lastUsedSettingsPref:com.apple.print.preset.settings:ManagementCodeValue 8703" ~/Library/Preferences/$YGMS2COLD

#to clean things up all the plist files for the printer presets have to be owned by the local user with write permissions
chown -R $u:1250749251 /Users/$u/Library/Preferences
chmod 600 /Users/$u/Library/Preferences/$ESL1BW
chmod 600 /Users/$u/Library/Preferences/$ESL1BWD
chmod 600 /Users/$u/Library/Preferences/$ESL1COL
chmod 600 /Users/$u/Library/Preferences/$ESL1COLD
chmod 600 /Users/$u/Library/Preferences/$ESL2BW
chmod 600 /Users/$u/Library/Preferences/$ESL2BWD
chmod 600 /Users/$u/Library/Preferences/$ESL2COL
chmod 600 /Users/$u/Library/Preferences/$ESL2COLD
chmod 600 /Users/$u/Library/Preferences/$ESL3BW
chmod 600 /Users/$u/Library/Preferences/$ESL3BWD
chmod 600 /Users/$u/Library/Preferences/$ESL3COL
chmod 600 /Users/$u/Library/Preferences/$ESL3COLD
chmod 600 /Users/$u/Library/Preferences/$ESLESBW
chmod 600 /Users/$u/Library/Preferences/$ESLESBWD
chmod 600 /Users/$u/Library/Preferences/$ESLESCOL
chmod 600 /Users/$u/Library/Preferences/$ESLESCOLD
chmod 600 /Users/$u/Library/Preferences/$ESU1BW
chmod 600 /Users/$u/Library/Preferences/$ESU1BWD
chmod 600 /Users/$u/Library/Preferences/$ESU1COL
chmod 600 /Users/$u/Library/Preferences/$ESU1COLD
chmod 600 /Users/$u/Library/Preferences/$ESU2BW
chmod 600 /Users/$u/Library/Preferences/$ESU2BWD
chmod 600 /Users/$u/Library/Preferences/$ESU2COL
chmod 600 /Users/$u/Library/Preferences/$ESU2COLD
chmod 600 /Users/$u/Library/Preferences/$YGES1BW
chmod 600 /Users/$u/Library/Preferences/$YGES1BWD
chmod 600 /Users/$u/Library/Preferences/$YGES1COL
chmod 600 /Users/$u/Library/Preferences/$YGES1COLD
chmod 600 /Users/$u/Library/Preferences/$YGES2BW
chmod 600 /Users/$u/Library/Preferences/$YGES2BWD
chmod 600 /Users/$u/Library/Preferences/$YGES2COL
chmod 600 /Users/$u/Library/Preferences/$YGES2COLD
chmod 600 /Users/$u/Library/Preferences/$YGES3BW
chmod 600 /Users/$u/Library/Preferences/$YGES3BWD
chmod 600 /Users/$u/Library/Preferences/$YGMS1BW
chmod 600 /Users/$u/Library/Preferences/$YGMS1BWD
chmod 600 /Users/$u/Library/Preferences/$YGMS1COL
chmod 600 /Users/$u/Library/Preferences/$YGMS1COLD
chmod 600 /Users/$u/Library/Preferences/$YGMS2BW
chmod 600 /Users/$u/Library/Preferences/$YGMS2BWD
chmod 600 /Users/$u/Library/Preferences/$YGMS2COL
chmod 600 /Users/$u/Library/Preferences/$YGMS2COLD

echo 'complete script'
fi

fi

done