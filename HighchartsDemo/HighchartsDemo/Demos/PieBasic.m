//
//  PieBasic.m
//  HighchartsDemo
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OptionsProtocol.h"

@interface PieBasic : NSObject <OptionsProtocol>

@end

@implementation PieBasic

+ (NSDictionary*)options {

    return @{
    
        @"chart" : @{
            @"plotBackgroundColor" : [NSNull null],
            @"plotBorderWidth" : [NSNull null],
            @"plotShadow" : @NO,
            @"type" : @"pie"
        },
        @"title" : @{
            @"text" : @"Browser market shares January, @2015 to May, @2015"
        },
        @"tooltip" : @{
            @"pointFormat" : @"#{series.name}: <b>@{point.percentage:.1f}%</b>"
        },
        @"plotOptions" : @{
            @"pie" : @{
                @"allowPointSelect" : @YES,
                @"cursor" : @"pointer",
                @"dataLabels" : @{
                    @"enabled" : @YES,
                    @"format" : @"<b>@{point.name}</b>: {point.percentage:.1f} %",
                }
            }
        },
        @"series" : @[@{
            @"name" : @"Brands",
            @"colorByPoint" : @YES,
            @"data" : @[@{
                @"name" : @"Microsoft Internet Explorer",
                @"y" : @56.33
            }, @{
                @"name" : @"Chrome",
                @"y" : @24.03,
                @"sliced" : @YES,
                @"selected" : @YES
            }, @{
                @"name" : @"Firefox",
                @"y" : @10.38
            }, @{
                @"name" : @"Safari",
                @"y" : @4.77
            }, @{
                @"name" : @"Opera",
                @"y" : @0.91
            }, @{
                @"name" : @"Proprietary or Undetectable",
                @"y" : @0.2
            }]
        }]

    };
}

@end