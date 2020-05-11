# iOS devices
xcodebuild archive \
    -scheme Highcharts \
    -archivePath "./XCFramework/Archive-iOS.xcarchive" \
    -sdk iphoneos \
    SKIP_INSTALL=NO

# iOS simulator
xcodebuild archive \
    -scheme Highcharts \
    -archivePath "./XCFramework/Archive-iOS-Simulator.xcarchive" \
    -sdk iphonesimulator \
    SKIP_INSTALL=NO

xcodebuild -create-xcframework \
    -framework "./XCFramework/Archive-iOS.xcarchive/Products/Library/Frameworks/Highcharts.framework" \
    -framework "./XCFramework/Archive-iOS-Simulator.xcarchive/Products/Library/Frameworks/Highcharts.framework" \
    -output "./XCFramework/Highcharts.xcframework"

rm -dr ./XCFramework/Archive-iOS.xcarchive
rm -dr ./XCFramework/Archive-iOS-Simulator.xcarchive
