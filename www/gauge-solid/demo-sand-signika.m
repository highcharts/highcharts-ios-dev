
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

    chartView.plugins = @[ @"solid-gauge" ];

    chartView.theme = @"sand-signika";
    
    chartView.options = @{
                            @"chart": @{
                                @"type": @"solidgauge"
                            },
                            @"title": [NSNull null],
                            @"pane": @{
                                @"center": @[
                                    @"50%",
                                    @"85%"
                                ],
                                @"size": @"140%",
                                @"startAngle": @-90,
                                @"endAngle": @90,
                                @"background": @{
                                    @"backgroundColor": @"#E0E0E8",
                                    @"innerRadius": @"60%",
                                    @"outerRadius": @"100%",
                                    @"shape": @"arc"
                                }
                            },
                            @"tooltip": @{
                                @"enabled": @false
                            },
                            @"plotOptions": @{
                                @"solidgauge": @{
                                    @"dataLabels": @{
                                        @"y": @5,
                                        @"borderWidth": @0,
                                        @"useHTML": @true
                                    }
                                }
                            },
                            @"yAxis": @{
                                @"stops": @[
                                    @[
                                        @0.1,
                                        @"#55BF3B"
                                    ],
                                    @[
                                        @0.5,
                                        @"#DDDF0D"
                                    ],
                                    @[
                                        @0.9,
                                        @"#DF5353"
                                    ]
                                ],
                                @"lineWidth": @0,
                                @"minorTickInterval": [NSNull null],
                                @"tickAmount": @2,
                                @"title": @{
                                    @"text": @"Speed"
                                },
                                @"labels": @{
                                    @"y": @16
                                },
                                @"min": @0,
                                @"max": @200
                            },
                            @"credits": @{
                                @"enabled": @false
                            },
                            @"series": @[
                                @{
                                    @"name": @"Speed",
                                    @"data": @[
                                        @80
                                    ],
                                    @"dataLabels": @{
                                        @"format": @"<div style=\"text-align:center\"><span style=\"font-size:25px;color:black\">{y}</span><br/><span style=\"font-size:12px;color:silver\">km/h</span></div>"
                                    },
                                    @"tooltip": @{
                                        @"valueSuffix": @" km/h"
                                    }
                                }
                            ]
                        };
    
    [self.view addSubview:chartView];
}

@end
