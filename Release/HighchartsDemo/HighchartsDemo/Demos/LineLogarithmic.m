//
//  LineLogarithmic.m
//  HighchartsDemo
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OptionsProtocol.h"

@interface LineLogarithmic : NSObject <OptionsProtocol>

@end

@implementation LineLogarithmic

+ (NSDictionary*)options {

    return @{

        @"title" : @{
            @"text" : @"Logarithmic axis demo"
        },

        @"xAxis" : @{
            @"tickInterval" : @1
        },

        @"yAxis" : @{
            @"type" : @"logarithmic",
            @"minorTickInterval" : @0.1
        },

        @"tooltip" : @{
            @"headerFormat" : @"<b>{series.name}</b><br />",
            @"pointFormat" : @"x = {point.x}, y = {point.y}"
        },

        @"series" : @[@{
            @"data" : @[@1, @2, @4, @8, @16, @32, @64, @128, @256, @512],
            @"pointStart" : @1
        }]

    };
}

@end