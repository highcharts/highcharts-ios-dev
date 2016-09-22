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

//@[@0, @"rgb(98, 104, 166)"],
//@[@1, @"rgb(244, 153, 82)"]

+ (NSDictionary*)provideOptionsForChartType:(NSDictionary*)options series:(NSArray*)series;
{
    
    if ([options[@"chartType"] isEqualToString:@"area"]) {
        return @{
                 @"chart" : @{
                         @"backgroundColor": @{
                                 @"linearGradient": @[@0, @0, @0, @300],
                                 @"stops": @[
                                         @[@0, @"rgb(102, 153, 161)"],
                                         @[@1, @"rgb(128, 135, 232)"]
                                         ]
                                 },
                         @"borderRadius": @6,
                         @"type": options[@"chartType"]
                         },
                 @"exporting": @{
                         @"enabled": options[@"exporting"]
                         },
                 @"navigation": @{
                         @"buttonOptions": @{
                                 @"symbolStroke": @"rgba(255, 255, 255, 0.4)",
                                 @"theme": @{
                                         @"fill": @"rgba(0,0,0,0.0)"
                                         }
                                 }
                         },
                 @"plotOptions": @{
                         @"series": @{
                         @"fillColor": @{
                             @"linearGradient": @[@0, @0, @0, @150],
                             @"stops": @[
                                 @[@0, @"rgba(255,255,255, 0.75)"],
                                 @[@1, @"rgba(255,255,255, 0.02)"]
                                 ]
                          }
                         }
                         },
                 @"credits": @{
                         @"enabled": @NO
                         },
                 @"title": @{
                         @"text": options[@"title"],
                         @"align": @"left",
                         @"style": @{
                                 @"fontFamily": @"Arial",
                                 @"fontSize": @"14px",
                                 @"color": @"rgba(255, 255, 255, 0.6)"
                                 },
                         @"y": @16
                         },
                 @"subtitle": @{
                         @"text": options[@"subtitle"],
                         @"align": @"left",
                         @"style": @{
                                 @"fontFamily": @"Arial",
                                 @"fontSize": @"10px",
                                 @"color": @"rgba(255, 255, 255, 0.6)"
                                 },
                         @"y": @28
                         },
                 @"tooltip": @{
                         @"headerFormat": @"",
                         },
                 @"xAxis": @{
                          @"tickColor": @"rgba(255,255,255,0.0)",
                          @"lineColor": @"rgba(255, 255, 255, 0.3)",
                          @"labels": @{
                                  @"style": @{
                                          @"color": @"rgb(255, 255, 255)",
                                          }
                                  }
                         },
                 @"yAxis": @{
                         @"visible": @NO                         },
                 @"series": @[
                         @{ @"showInLegend": @NO, @"data" : [series copy], @"color": @"rgb(255, 255, 255)", @"name": options[@"title"]}
                         ]
                 };
    }

    if ([options[@"chartType"] isEqualToString:@"column"]) {
        return @{
                 @"chart" : @{
                         @"backgroundColor":  @{
                                 @"linearGradient": @[@0, @0, @0, @300],
                                 @"stops": @[
                                         @[@0, @"rgb(66, 218, 113)"],
                                         @[@1, @"rgb(80, 140, 200)"]
                                         ]
                                 },
                         @"borderRadius": @6,
                         @"type": options[@"chartType"]
                         },
                 @"exporting": @{
                         @"enabled": options[@"exporting"]
                         },
                 @"navigation": @{
                         @"buttonOptions": @{
                                 @"symbolStroke": @"rgba(255, 255, 255, 0.4)",
                                 @"theme": @{
                                         @"fill": @"rgba(0,0,0,0.0)"
                                         }
                                 }
                         },
                 @"plotOptions": @{
                         @"series": @{
                                 @"color": @"rgba(255, 255, 255, 0.6)",
                                 @"borderRadius": @2,
                                 @"borderWidth": @0
                                 },
                         },
                 @"credits": @{
                         @"enabled": @NO
                         },
                 @"title": @{
                         @"text": options[@"title"],
                         @"align": @"left",
                         @"style": @{
                                 @"fontFamily": @"Arial",
                                 @"fontSize": @"14px",
                                 @"color": @"rgba(255, 255, 255, 0.6)"
                                 },
                         @"y": @16
                         },
                 @"subtitle": @{
                         @"text": options[@"subtitle"],
                         @"align": @"left",
                         @"style": @{
                                 @"fontFamily": @"Arial",
                                 @"fontSize": @"10px",
                                 @"color": @"rgba(255, 255, 255, 0.6)"
                                 },
                         @"y": @28
                         },                 @"tooltip": @{
                         @"headerFormat": @"",
                         },
                 @"xAxis": @{
                          @"tickColor": @"rgba(255,255,255,0.0)",
                          @"lineColor": @"rgba(255, 255, 255, 0.3)",
                          @"labels": @{
                                  @"style": @{
                                          @"color": @"rgb(255, 255, 255)",
                                          }
                                  }
                         },
                 @"yAxis": @{
                         @"visible": @NO
                         },
                 @"series": @[
                         @{ @"showInLegend": @NO, @"data" : [series copy], @"name": options[@"title"]}
                         ]
                 };
    }

    if ([options[@"chartType"] isEqualToString:@"spline"]) {
        return @{
                 @"chart" : @{
                         @"backgroundColor":  @{
                                 @"linearGradient": @[@0, @0, @0, @300],
                                 @"stops": @[
                                         @[@0, @"rgba(132, 103, 144, 1)"],
                                         @[@1, @"rgba(163, 95, 103, 1)"]
                                         ]
                                 },
                         @"borderRadius": @6,
                         @"type": options[@"chartType"]
                         },
                 @"exporting": @{
                         @"enabled": options[@"exporting"]
                         },
                 @"navigation": @{
                         @"buttonOptions": @{
                                 @"symbolStroke": @"rgba(255, 255, 255, 0.4)",
                                 @"theme": @{
                                         @"fill": @"rgba(0,0,0,0.0)"
                                         }
                                 }
                         },
                 @"plotOptions": @{
                         @"series": @{
                                 @"color": @"rgba(255, 255, 255, 0.6)",
                                 @"borderRadius": @2,
                                 @"borderWidth": @0
                                 },
                         },
                 @"credits": @{
                         @"enabled": @NO
                         },
                 @"title": @{
                         @"text": options[@"title"],
                         @"align": @"left",
                         @"style": @{
                                 @"fontFamily": @"Arial",
                                 @"fontSize": @"14px",
                                 @"color": @"rgba(255, 255, 255, 0.6)"
                                 },
                         @"y": @16
                         },
                 @"subtitle": @{
                         @"text": options[@"subtitle"],
                         @"align": @"left",
                         @"style": @{
                                 @"fontFamily": @"Arial",
                                 @"fontSize": @"10px",
                                 @"color": @"rgba(255, 255, 255, 0.6)"
                                 },
                         @"y": @28
                         },
                 @"tooltip": @{
                         @"headerFormat": @"",
                         },
                 @"xAxis": @{
                          @"tickColor": @"rgba(255,255,255,0.0)",
                          @"lineColor": @"rgba(255, 255, 255, 0.3)",
                          @"labels": @{
                                  @"style": @{
                                          @"color": @"rgb(255, 255, 255)",
                                          }
                                  }
                         },
                 @"yAxis": @{
                         @"visible": @NO
                         },
                 @"series": @[
                         @{ @"showInLegend": @NO, @"data" : [series copy], @"name": options[@"title"]}
                         ]
                 };
    }
    
    return nil;
}

@end
