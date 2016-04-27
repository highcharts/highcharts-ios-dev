//
//  AreaNegativeValues.m
//  HighchartsDemo
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OptionsProtocol.h"

@interface AreaNegativeValues : NSObject <OptionsProtocol>

@end

@implementation AreaNegativeValues

+ (NSDictionary*)options {

    return @{
    
        @"chart" : @{
            @"type" : @"area"
        },
        @"title" : @{
            @"text" : @"Area chart with negative values"
        },
        @"xAxis" : @{
            @"categories" : @[@"Apples", @"Oranges", @"Pears", @"Grapes", @"Bananas"]
        },
        @"credits" : @{
            @"enabled" : @NO
        },
        @"series" : @[@{
            @"name" : @"John",
            @"data" : @[@5, @3, @4, @7, @2]
        }, @{
            @"name" : @"Jane",
            @"data" : @[@2, @-2, @-3, @2, @1]
        }, @{
            @"name" : @"Joe",
            @"data" : @[@3, @4, @4, @-2, @5]
        }]

    };
}

@end