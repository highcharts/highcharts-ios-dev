//
//  OptionsProvider.m
//  HighFit
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import "OptionsProvider.h"

@implementation OptionsProvider

+ (NSDictionary*)provideOptionsChartForseries:(NSArray*)series;
{
    return @{
             @"exporting": @{
                 @"enabled": @NO
             },
             @"credits": @{
                     @"enabled": @NO
                     },
             @"chart": @{
                     @"type": @"column"
                     },
             @"title": @{
                     @"text": @""
                     },
             @"subtitle": @{
                     @"text": @""
                     },
             @"xAxis": @{
                     },
             @"yAxis": @{
                     @"title": @{
                             @"text": @""
                             },
                     @"tickAmount": @1
                     },
             @"series": @[
                     @{ @"enableMouseTracking": @NO,@"showInLegend": @NO, @"data" : [series copy] }
                     ]
             };
}

@end
