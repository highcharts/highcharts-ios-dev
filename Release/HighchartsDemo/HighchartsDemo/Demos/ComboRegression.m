//
//  ComboRegression.m
//  HighchartsDemo
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OptionsProtocol.h"

@interface ComboRegression : NSObject <OptionsProtocol>

@end

@implementation ComboRegression

+ (NSDictionary*)options {

    return @{
    
        @"xAxis" : @{
            @"min" : @-0.5,
            @"max" : @5.5
        },
        @"yAxis" : @{
            @"min" : @0
        },
        @"title" : @{
            @"text" : @"Scatter plot with regression line"
        },
        @"series" : @[@{
            @"type" : @"line",
            @"name" : @"Regression Line",
            @"data" : @[@[@0, @1.11], @[@5, @4.51]],
            @"marker" : @{
                @"enabled" : @NO
            },
            @"states" : @{
                @"hover" : @{
                    @"lineWidth" : @0
                }
            },
            @"enableMouseTracking" : @NO
        }, @{
            @"type" : @"scatter",
            @"name" : @"Observations",
            @"data" : @[@1, @1.5, @2.8, @3.5, @3.9, @4.2],
            @"marker" : @{
                @"radius" : @4
            }
        }]

    };
}

@end