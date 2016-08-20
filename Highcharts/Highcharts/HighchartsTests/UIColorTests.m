//
//  UIColorTests.m
//  Highcharts
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <Highcharts/Highcharts.h>

@interface UIColorTests : XCTestCase

@end

@implementation UIColorTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testColor {
    UIColor *color = [UIColor colorWithRed:0.502 green:0.502 blue:0.502 alpha:1.0];
    
    NSString *result = [color color];
    
    NSString *expected = @"#808080";
    
    XCTAssertEqualObjects(expected, result);
}

@end
