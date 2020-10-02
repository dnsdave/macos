u=$(who | awk 'NR==1{print $1}')
echo $u
cd /Users/$u/Library/Application\ Support/Google/
pwd
mkdir Drive
mkdir Drive/user_default
pwd
touch Drive/user_default/user_setup.config
ls -la
chown -R $u:staff Drive/*
ls -la
cat > user_setup.config <<- EOL
[Computers]
	desktop_enabled: True
	documents_enabled: True
	pictures_enabled: True
	high_quality_enabled: False
	always_show_in_photos: False
	usb_sync_enabled: False
	delete_mode: ALWAYS_SYNC_DELETES
[MyDrive]
	my_drive_enabled: False
[Settings]
	autolaunch: True
	show_overlays: False
[Network]
	download_bandwidth: 100
	upload_bandwidth: 100
	use_direct_connection: False
EOL