//
//  SplineSymbols.m
//  HighchartsDemo
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OptionsProtocol.h"

@interface LineSplineSymbols : NSObject <OptionsProtocol>

@end

@implementation LineSplineSymbols

+ (NSDictionary*)options {

    return @{
    
        @"chart" : @{
            @"type" : @"spline"
        },
        @"title" : @{
            @"text" : @"Monthly Average Temperature"
        },
        @"subtitle" : @{
            @"text" : @"Source: WorldClimate.com"
        },
        @"xAxis" : @{
            @"categories" : @[@"Jan", @"Feb", @"Mar", @"Apr", @"May", @"Jun",
                @"Jul", @"Aug", @"Sep", @"Oct", @"Nov", @"Dec"]
        },
        @"yAxis" : @{
            @"title" : @{
                @"text" : @"Temperature"
            },
            @"labels" : @{
                @"format" : @"{value}°"
            }
        },
        @"tooltip" : @{
            @"crosshairs" : @YES,
            @"shared" : @YES
        },
        @"plotOptions" : @{
            @"spline" : @{
                @"marker" : @{
                    @"radius" : @4,
                    @"lineColor" : @"#666666",
                    @"lineWidth" : @1
                }
            }
        },
        @"series" : @[@{
            @"name" : @"Tokyo",
            @"marker" : @{
                @"symbol" : @"square"
            },
            @"data" : @[@7.0, @6.9, @9.5, @14.5, @18.2, @21.5, @25.2, @{
                @"y" : @26.5,
                @"marker" : @{
                    @"symbol" : @"url(./graphics/sun.png)"
                }
            }, @23.3, @18.3, @13.9, @9.6]

        }, @{
            @"name" : @"London",
            @"marker" : @{
                @"symbol" : @"diamond"
            },
            @"data" : @[@{
                @"y" : @3.9,
                @"marker" : @{
                    @"symbol" : @"url(./graphics/snow.png)"
                }
            }, @4.2, @5.7, @8.5, @11.9, @15.2, @17.0, @16.6, @14.2, @10.3, @6.6, @4.8]
        }]

    };
}

@end