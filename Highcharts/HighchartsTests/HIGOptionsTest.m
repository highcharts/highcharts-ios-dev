//
//  HIGOptionsTest.m
//  Highcharts
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "HIGOptions.h"

@interface HIGOptionsTest : XCTestCase

@end

@implementation HIGOptionsTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testOptions {
    
    NSDictionary *result = [HIGOptions addOptions:@{@"key":@"value"}];
    
    NSDictionary *expected = @{@"key": @"value", @"chart" : @{ @"renderTo" : @"container" }};
    
    XCTAssertEqualObjects(expected, result);
}

@end
