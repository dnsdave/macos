#!/bin/bash
#This script sets the tap-to-click and three-finger-drag options on MacOS
read "What IP address do you want to set this up on? " address
if $address = localhost ; then
	defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
	defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerDrag -bool true
	defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true 
	defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -bool true
	defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
	defaults -currentHost write NSGlobalDomain com.apple.trackpad.threeFingerSwipeGesture -int 1
	defaults write NSGlobalDomain com.apple.trackpad.threeFingerSwipeGesture -int 1
	defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1 
else
	ssh dnsadmin@$address "bash -s" < /Users/dnsadmin/Desktop/macosclick.sh ; exit;
fi