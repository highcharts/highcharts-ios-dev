#!/bin/bash

mkdir -p "Build"

xcodebuild \
	-project Highcharts.xcodeproj \
	-configuration Release \
	-scheme Highcharts \
	-sdk iphoneos \
	SYMROOT=Build \
	-arch arm64 \
	-arch arm64e \
	ONLY_ACTIVE_ARCH=no

xcodebuild archive \
	-scheme Highcharts \
	-project Highcharts.xcodeproj \
	-configuration Release \
	-sdk iphoneos \
	-archivePath Archive \
	-arch arm64 \
	-arch arm64e \
	ONLY_ACTIVE_ARCH=no

xcodebuild build \
	-project Highcharts.xcodeproj \
	-configuration Release \
	-scheme Highcharts \
	-sdk iphonesimulator SYMROOT=Build \
	ONLY_ACTIVE_ARCH=no \
	-arch x86_64

cp -RL Archive.xcarchive/Products/Library/Frameworks/ Build/Release-universal/

lipo -create Archive.xcarchive/Products/Library/Frameworks/Highcharts.framework/Highcharts Build/Release-iphonesimulator/Highcharts.framework/Highcharts \
	-output Build/Release-universal/Highcharts.framework/Highcharts

cp -RL Build/Release-universal/ Ready/

rm -dr Build

rm -dr Archive.xcarchive