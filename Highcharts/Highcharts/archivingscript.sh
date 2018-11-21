#!/bin/bash

mkdir -p "Build"

#xcodebuild -project Highcharts.xcodeproj -configuration Release -scheme Highcharts -sdk iphoneos SYMROOT=Build -arch armv7 -arch armv7s -arch arm64 only_active_arch=no

xcodebuild archive -project Highcharts.xcodeproj -configuration Release -scheme Highcharts -sdk iphoneos SYMROOT=Build -archivePath Archive -arch armv7 -arch armv7s -arch arm64 only_active_arch=no

xcodebuild build -project Highcharts.xcodeproj -configuration Release -scheme Highcharts -sdk iphonesimulator SYMROOT=Build only_active_arch=no -arch x86_64 -arch i386

cp -RL Archive.xcarchive/Products/Library/Frameworks/ Build/Release-universal/

lipo -create Archive.xcarchive/Products/Library/Frameworks/Highcharts.framework/Highcharts Build/Release-iphonesimulator/Highcharts.framework/Highcharts -output Build/Release-universal/Highcharts.framework/Highcharts

cp -RL Build/Release-universal/ Ready/

rm -dr Build

rm -dr Archive.xcarchive