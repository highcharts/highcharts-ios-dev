//
//  ViewController.m
//  Highcharts
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Highcharts/Highcharts.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HIGChartView *chartView = [[HIGChartView alloc] initWithFrame:self.view.bounds];
    
    chartView.options = @{
                            @"colors": @[
                                @"rgb(15,72,127)",
                                @"rgb(52,109,164)",
                                @"rgb(88,145,200)",
                                @"rgb(124,181,236)",
                                @"rgb(160,217,255)",
                                @"rgb(196,253,255)",
                                @"rgb(233,255,255)",
                                @"rgb(255,255,255)",
                                @"rgb(255,255,255)",
                                @"rgb(255,255,255)"
                            ],
                            @"chart": @{
                                @"plotBackgroundColor": [NSNull null],
                                @"plotBorderWidth": [NSNull null],
                                @"plotShadow": @false,
                                @"type": @"pie"
                            },
                            @"title": @{
                                @"text": @"Browser market shares at a specific website, 2014"
                            },
                            @"tooltip": @{
                                @"pointFormat": @"{series.name}: <b>{point.percentage:.1f}%</b>"
                            },
                            @"plotOptions": @{
                                @"pie": @{
                                    @"allowPointSelect": @true,
                                    @"cursor": @"pointer",
                                    @"dataLabels": @{
                                        @"enabled": @true,
                                        @"format": @"<b>{point.name}</b>: {point.percentage:.1f} %",
                                        @"style": @{
                                            @"color": @"black"
                                        }
                                    }
                                }
                            },
                            @"series": @[
                                @{
                                    @"name": @"Brands",
                                    @"data": @[
                                        @{
                                            @"name": @"Microsoft Internet Explorer",
                                            @"y": @56.33
                                        },
                                        @{
                                            @"name": @"Chrome",
                                            @"y": @24.03
                                        },
                                        @{
                                            @"name": @"Firefox",
                                            @"y": @10.38
                                        },
                                        @{
                                            @"name": @"Safari",
                                            @"y": @4.77
                                        },
                                        @{
                                            @"name": @"Opera",
                                            @"y": @0.91
                                        },
                                        @{
                                            @"name": @"Proprietary or Undetectable",
                                            @"y": @0.2
                                        }
                                    ]
                                }
                            ]
                        };
    
    [self.view addSubview:chartView];
}

@end
