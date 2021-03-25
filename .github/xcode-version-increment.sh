#!/bin/sh


INFO_PLIST="ios/App/App/Info"
INFO_PLIST_EXT="${INFO_PLIST}.plist"
BUILD_NUMBER=2
((BUILD_NUMBER+=1))
ls -l
VERSION_NUMBER=1.0.$BUILD_NUMBER
defaults write $INFO_PLIST CFBundleShortVersionString $VERSION_NUMBER
defaults write $INFO_PLIST CFBundleVersion $BUILD_NUMBER
plutil -convert xml1 $INFO_PLIST_EXT

echo "Released $VERSION_NUMBER"
echo "Incremented build number to $BUILD_NUMBER"
