#!/bin/bash
#This script sets the tap-to-click and three-finger-drag options on MacOS
# ssh dnsadmin@10.33.2.177 "bash -s" < /Users/dnsadmin/Desktop/macosclick.sh 
	defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
	defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerDrag -bool true
	defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
	defaults -currentHost write NSGlobalDomain com.apple.trackpad.threeFingerSwipeGesture -int 1
	trackpad
