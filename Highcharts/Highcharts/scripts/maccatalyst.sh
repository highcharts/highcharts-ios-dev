# iOS devices
xcodebuild archive \
    -scheme Highcharts \
    -archivePath "./MacCatalyst/Archive-iOS.xcarchive" \
    -sdk iphoneos \
    SKIP_INSTALL=NO \
    BUILD_LIBRARY_FOR_DISTRIBUTION=YES

# iOS simulator
xcodebuild archive \
    -scheme Highcharts \
    -archivePath "./MacCatalyst/Archive-iOS-Simulator.xcarchive" \
    -sdk iphonesimulator \
    SKIP_INSTALL=NO \
    BUILD_LIBRARY_FOR_DISTRIBUTION=YES

# Mac Catalyst
xcodebuild archive \
    -scheme Highcharts \
    -archivePath "./MacCatalyst/Archive-Mac-Catalyst.xcarchive" \
    -destination 'platform=macOS,arch=x86_64,variant=Mac Catalyst' \
    SKIP_INSTALL=NO \
    BUILD_LIBRARY_FOR_DISTRIBUTION=YES

xcodebuild -create-xcframework \
    -framework "./MacCatalyst/Archive-iOS.xcarchive/Products/Library/Frameworks/Highcharts.framework" \
    -framework "./MacCatalyst/Archive-iOS-Simulator.xcarchive/Products/Library/Frameworks/Highcharts.framework" \
    -framework "./MacCatalyst/Archive-Mac-Catalyst.xcarchive/Products/Library/Frameworks/Highcharts.framework" \
    -output "./MacCatalyst/Highcharts.xcframework"

rm -dr ./MacCatalyst/Archive-iOS.xcarchive
rm -dr ./MacCatalyst/Archive-iOS-Simulator.xcarchive
rm -dr ./MacCatalyst/Archive-Mac-Catalyst.xcarchive
