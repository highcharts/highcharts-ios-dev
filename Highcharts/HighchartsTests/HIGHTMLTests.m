//
//  HIGHTMLTests.m
//  Highcharts
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "HIGHTML.h"

@interface HIGHTMLTests : XCTestCase

@end

@implementation HIGHTMLTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testHTML {
    
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];

    HIGHTML *html = [[HIGHTML alloc] init];
    
    [html loadHTML:[bundle pathForResource:@"TestTemplate" ofType:@"html"]];
    [html prepareJavaScript:@[@"js-0"] prefix:nil suffix:nil];
    [html prepareJavaScript:@[@"js-1"] prefix:@".src" suffix:nil];
    [html prepareJavaScript:@[@"js-2"] prefix:@".ios" suffix:@".json"];
    [html prepareJavaScript:@[@"js-3"] prefix:nil suffix:@".json"];
    
    [html prepareOptions: @{ @"key" : @"value"} ];
    
    [html injectJavaScriptToHTML];
    
    NSString *result = html.html;
    
    NSString *expectedPath = [bundle pathForResource:@"TestResult" ofType:@"html"];
    
    NSString *expected = [NSString stringWithContentsOfFile:expectedPath encoding:NSUTF8StringEncoding error:nil];
    
    XCTAssertEqualObjects(expected, result);
}

@end
