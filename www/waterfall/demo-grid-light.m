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

    chartView.theme = @"grid-light";
    
    chartView.options = @{
                            @"chart": @{
                                @"type": @"waterfall"
                            },
                            @"title": @{
                                @"text": @"Highcharts Waterfall"
                            },
                            @"xAxis": @{
                                @"type": @"category"
                            },
                            @"yAxis": @{
                                @"title": @{
                                    @"text": @"USD"
                                },
                                @"labels": @{
                                    @"format": @"{value}k"
                                }
                            },
                            @"legend": @{
                                @"enabled": @false
                            },
                            @"tooltip": @{
                                @"pointFormat": @"<b>${point.y:,.2f}</b> USD"
                            },
                            @"series": @[
                                @{
                                    @"upColor": @"#90ee7e",
                                    @"color": @"#7798BF",
                                    @"data": @[
                                        @{
                                            @"name": @"Start",
                                            @"y": @120
                                        },
                                        @{
                                            @"name": @"Product Revenue",
                                            @"y": @569
                                        },
                                        @{
                                            @"name": @"Service Revenue",
                                            @"y": @231
                                        },
                                        @{
                                            @"name": @"Positive Balance",
                                            @"isIntermediateSum": @true,
                                            @"color": @"#f7a35c"
                                        },
                                        @{
                                            @"name": @"Fixed Costs",
                                            @"y": @-342
                                        },
                                        @{
                                            @"name": @"Variable Costs",
                                            @"y": @-233
                                        },
                                        @{
                                            @"name": @"Balance",
                                            @"isSum": @true,
                                            @"color": @"#f7a35c"
                                        }
                                    ],
                                    @"dataLabels": @{
                                        @"enabled": @true,
                                        @"format": @"{point.y}k",
                                        @"style": @{
                                            @"fontWeight": @"bold"
                                        }
                                    },
                                    @"pointPadding": @0
                                }
                            ]
                        };
    
    [self.view addSubview:chartView];
}

@end
