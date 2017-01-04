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

    chartView.theme = @"dark-unica";
    
    chartView.options = @{
    @"chart": @{
        @"zoomType": @"xy"
    },
    @"title": @{
        @"text": @"Average Monthly Temperature and Rainfall in Tokyo"
    },
    @"subtitle": @{
        @"text": @"Source: WorldClimate.com"
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
            ],
            @"crosshair": @true
        }
    ],
    @"yAxis": @[
        @{
            @"labels": @{
                @"format": @"{value}°C",
                @"style": @{
                    @"color": @"#90ee7e"
                }
            },
            @"title": @{
                @"text": @"Temperature",
                @"style": @{
                    @"color": @"#90ee7e"
                }
            }
        },
        @{
            @"title": @{
                @"text": @"Rainfall",
                @"style": @{
                    @"color": @"#2b908f"
                }
            },
            @"labels": @{
                @"format": @"{value} mm",
                @"style": @{
                    @"color": @"#2b908f"
                }
            },
            @"opposite": @true
        }
    ],
    @"tooltip": @{
        @"shared": @true
    },
    @"legend": @{
        @"layout": @"vertical",
        @"align": @"left",
        @"x": @120,
        @"verticalAlign": @"top",
        @"y": @100,
        @"floating": @true,
        @"backgroundColor": @"rgba(0, 0, 0, 0.5)"
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
                @"valueSuffix": @" mm"
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
                @"valueSuffix": @"°C"
            }
        }
    ]
};    
    [self.view addSubview:chartView];
}

@end
