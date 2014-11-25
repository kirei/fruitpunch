#!/bin/sh
#
# Sanitizer for OS X 10.10 (Yosemite)

# do not save new documents to iCloud by default
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# disable gamed
defaults write com.apple.gamed Disabled -bool true

# no automatic captive portal detection
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.captive.control Active -boolean false
