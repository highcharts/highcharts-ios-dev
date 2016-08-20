//
//  HIGJavaScriptTests.m
//  Highcharts
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "HIGJavaScript.h"

@interface HIGJavaScriptTests : XCTestCase

@end

@implementation HIGJavaScriptTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testJS {

    HIGJavaScript *js = [[HIGJavaScript alloc] init];
    
    NSString *result = [js JSObject:@{ @"key" : @"value", @"bool" : @NO, @"number" : @1}];
    
    NSString *expected = @"{\"key\":\"value\",\"bool\":false,\"number\":1}";
    
    XCTAssertEqualObjects(expected, result);
}

@end
