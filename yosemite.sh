#!/bin/sh
#
# Sanitizer for OS X 10.10 (Yosemite)

stop_and_unload() {
	sudo launchctl stop -w $1
	sudo launchctl unload -w $1
}

unload() {
	sudo launchctl unload -w $1
}

# do not save new documents to iCloud by default
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# disable gamed
defaults write com.apple.gamed Disabled -bool true

# no automatic captive portal detection
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.captive.control Active -boolean false

# NetBIOS
stop_and_unload /System/Library/LaunchDaemons/com.apple.netbiosd.plist 

# Microsoft RPC
stop_and_unload /System/Library/LaunchDaemons/com.apple.msrpc.echosvc.plist
stop_and_unload /System/Library/LaunchDaemons/com.apple.msrpc.lsarpc.plist
stop_and_unload /System/Library/LaunchDaemons/com.apple.msrpc.mdssvc.plist
stop_and_unload /System/Library/LaunchDaemons/com.apple.msrpc.netlogon.plist
stop_and_unload /System/Library/LaunchDaemons/com.apple.msrpc.srvsvc.plist
stop_and_unload /System/Library/LaunchDaemons/com.apple.msrpc.wkssvc.plist
