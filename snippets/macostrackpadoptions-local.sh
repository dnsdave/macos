#!/bin/bash 
#Set up touch-to-click and 3-finger-drag on macOS
defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true 
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true 
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1 
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1 
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -bool true
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerDrag -bool true
defaults -currentHost write NSGlobalDomain com.apple.trackpad.threeFingerSwipeGesture -int 1
