//
//  OptionsProvider.m
//  HighFit
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import "OptionsProvider.h"
#import <UIKit/UIKit.h>
#import <Highcharts/Highcharts.h>

@implementation OptionsProvider

+ (NSDictionary*)provideOptionsForChartType:(NSDictionary*)options series:(NSArray*)series;
{
    return @{
             @"chart" : @{
                     @"backgroundColor": @"#AAAAAA",
                     @"borderRadius": @6,
                     @"type": options[@"chartType"]
             },
             @"exporting": @{
                 @"enabled": @NO
             },
             @"plotOptions": @{
                 @"series": @{
                     @"borderRadius": @5
                     }
             },
             @"credits": @{
                     @"enabled": @NO
                     },
             @"title": @{
                     @"text": @""
                     },
             @"subtitle": @{
                     @"text": @""
                     },
             @"tooltip": @{
                      @"headerFormat": @"",
             },
             @"xAxis": @{
                     },
             @"yAxis": @{
                     @"title": @{
                             @"text": @""
                             },
                     @"tickAmount": @0
                     },
             @"series": @[
                     @{ @"showInLegend": @NO, @"data" : [series copy], @"color": @"#FFFFFF", @"name": options[@"title"]}
                     ]
             };
}

@end
