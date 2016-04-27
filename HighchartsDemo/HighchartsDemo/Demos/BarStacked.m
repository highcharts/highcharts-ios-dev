//
//  BarStacked.m
//  HighchartsDemo
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OptionsProtocol.h"

@interface BarStacked : NSObject <OptionsProtocol>

@end

@implementation BarStacked

+ (NSDictionary*)options {

    return @{
    
        @"chart" : @{
            @"type" : @"bar"
        },
        @"title" : @{
            @"text" : @"Stacked bar chart"
        },
        @"xAxis" : @{
            @"categories" : @[@"Apples", @"Oranges", @"Pears", @"Grapes", @"Bananas"]
        },
        @"yAxis" : @{
            @"min" : @0,
            @"title" : @{
                @"text" : @"Total fruit consumption"
            }
        },
        @"legend" : @{
            @"reversed" : @YES
        },
        @"plotOptions" : @{
            @"series" : @{
                @"stacking" : @"normal"
            }
        },
        @"series" : @[@{
            @"name" : @"John",
            @"data" : @[@5, @3, @4, @7, @2]
        }, @{
            @"name" : @"Jane",
            @"data" : @[@2, @2, @3, @2, @1]
        }, @{
            @"name" : @"Joe",
            @"data" : @[@3, @4, @4, @2, @5]
        }]

    };
}

@end