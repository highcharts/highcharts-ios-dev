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
    @"chart": @{
        @"zoomType": @"xy"
    },
    @"title": @{
        @"text": @"Temperature vs Rainfall"
    },
    @"xAxis": @[
        @{
            @"categories": @[
                @"Jan",
                @"Feb",
                @"Mar",
                @"Apr",
                @"May",
                @"Jun",
                @"Jul",
                @"Aug",
                @"Sep",
                @"Oct",
                @"Nov",
                @"Dec"
            ]
        }
    ],
    @"yAxis": @[
        @{
            @"labels": @{
                @"format": @"{value} °C",
                @"style": @{
                    @"color": @"#434348"
                }
            },
            @"title": @{
                @"text": @"Temperature",
                @"style": @{
                    @"color": @"#434348"
                }
            }
        },
        @{
            @"title": @{
                @"text": @"Rainfall",
                @"style": @{
                    @"color": @"#7cb5ec"
                }
            },
            @"labels": @{
                @"format": @"{value} mm",
                @"style": @{
                    @"color": @"#7cb5ec"
                }
            },
            @"opposite": @true
        }
    ],
    @"tooltip": @{
        @"shared": @true
    },
    @"series": @[
        @{
            @"name": @"Rainfall",
            @"type": @"column",
            @"yAxis": @1,
            @"data": @[
                @49.9,
                @71.5,
                @106.4,
                @129.2,
                @144,
                @176,
                @135.6,
                @148.5,
                @216.4,
                @194.1,
                @95.6,
                @54.4
            ],
            @"tooltip": @{
                @"pointFormat": @"<span style=\"font-weight: bold; color: {series.color}\">{series.name}</span>: <b>{point.y:.1f} mm</b> "
            }
        },
        @{
            @"name": @"Rainfall error",
            @"type": @"errorbar",
            @"yAxis": @1,
            @"data": @[
                @[
                    @48,
                    @51
                ],
                @[
                    @68,
                    @73
                ],
                @[
                    @92,
                    @110
                ],
                @[
                    @128,
                    @136
                ],
                @[
                    @140,
                    @150
                ],
                @[
                    @171,
                    @179
                ],
                @[
                    @135,
                    @143
                ],
                @[
                    @142,
                    @149
                ],
                @[
                    @204,
                    @220
                ],
                @[
                    @189,
                    @199
                ],
                @[
                    @95,
                    @110
                ],
                @[
                    @52,
                    @56
                ]
            ],
            @"tooltip": @{
                @"pointFormat": @"(error range: {point.low}-{point.high} mm)<br/>"
            }
        },
        @{
            @"name": @"Temperature",
            @"type": @"spline",
            @"data": @[
                @7,
                @6.9,
                @9.5,
                @14.5,
                @18.2,
                @21.5,
                @25.2,
                @26.5,
                @23.3,
                @18.3,
                @13.9,
                @9.6
            ],
            @"tooltip": @{
                @"pointFormat": @"<span style=\"font-weight: bold; color: {series.color}\">{series.name}</span>: <b>{point.y:.1f}°C</b> "
            }
        },
        @{
            @"name": @"Temperature error",
            @"type": @"errorbar",
            @"data": @[
                @[
                    @6,
                    @8
                ],
                @[
                    @5.9,
                    @7.6
                ],
                @[
                    @9.4,
                    @10.4
                ],
                @[
                    @14.1,
                    @15.9
                ],
                @[
                    @18,
                    @20.1
                ],
                @[
                    @21,
                    @24
                ],
                @[
                    @23.2,
                    @25.3
                ],
                @[
                    @26.1,
                    @27.8
                ],
                @[
                    @23.2,
                    @23.9
                ],
                @[
                    @18,
                    @21.1
                ],
                @[
                    @12.9,
                    @14
                ],
                @[
                    @7.6,
                    @10
                ]
            ],
            @"tooltip": @{
                @"pointFormat": @"(error range: {point.low}-{point.high}°C)<br/>"
            }
        }
    ]
};
    
    [self.view addSubview:chartView];
}

@end
