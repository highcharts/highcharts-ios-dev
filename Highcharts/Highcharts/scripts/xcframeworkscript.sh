# iOS devices

rm -rf ./XCFramework/*

xcodebuild archive \
    -scheme Highcharts \
    -archivePath "./XCFramework/Archive-iOS.xcarchive" \
    -sdk iphoneos \
    SKIP_INSTALL=NO \
    BUILD_LIBRARY_FOR_DISTRIBUTION=YES

# iOS simulator
xcodebuild archive \
    -scheme Highcharts \
    -archivePath "./XCFramework/Archive-iOS-Simulator.xcarchive" \
    -sdk iphonesimulator \
    SKIP_INSTALL=NO \
    BUILD_LIBRARY_FOR_DISTRIBUTION=YES

# Mac Catalyst
xcodebuild archive \
    -scheme Highcharts \
    -archivePath "./XCFramework/Archive-Mac-Catalyst.xcarchive" \
    -destination 'platform=macOS,arch=x86_64,variant=Mac Catalyst' \
    SKIP_INSTALL=NO \
    BUILD_LIBRARY_FOR_DISTRIBUTION=YES

xcodebuild -create-xcframework \
    -framework "./XCFramework/Archive-iOS.xcarchive/Products/Library/Frameworks/Highcharts.framework" \
    -framework "./XCFramework/Archive-iOS-Simulator.xcarchive/Products/Library/Frameworks/Highcharts.framework" \
    -framework "./XCFramework/Archive-Mac-Catalyst.xcarchive/Products/Library/Frameworks/Highcharts.framework" \
    -output "./XCFramework/Highcharts.xcframework"

rm -dr ./XCFramework/Archive-iOS.xcarchive
rm -dr ./XCFramework/Archive-iOS-Simulator.xcarchive
rm -dr ./XCFramework/Archive-Mac-Catalyst.xcarchive
