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

    chartView.theme = @"sand-signika";
    
    chartView.options = @{
    @"chart": @{
        @"zoomType": @"xy"
    },
    @"title": @{
        @"text": @"Average Monthly Weather Data for Tokyo"
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
                    @"color": @"#8d4654"
                }
            },
            @"title": @{
                @"text": @"Temperature",
                @"style": @{
                    @"color": @"#8d4654"
                }
            },
            @"opposite": @true
        },
        @{
            @"gridLineWidth": @0,
            @"title": @{
                @"text": @"Rainfall",
                @"style": @{
                    @"color": @"#f45b5b"
                }
            },
            @"labels": @{
                @"format": @"{value} mm",
                @"style": @{
                    @"color": @"#f45b5b"
                }
            }
        },
        @{
            @"gridLineWidth": @0,
            @"title": @{
                @"text": @"Sea-Level Pressure",
                @"style": @{
                    @"color": @"#8085e9"
                }
            },
            @"labels": @{
                @"format": @"{value} mb",
                @"style": @{
                    @"color": @"#8085e9"
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
        @"x": @80,
        @"verticalAlign": @"top",
        @"y": @55,
        @"floating": @true,
        @"backgroundColor": @"#FFFFFF"
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
            @"name": @"Sea-Level Pressure",
            @"type": @"spline",
            @"yAxis": @2,
            @"data": @[
                @1016,
                @1016,
                @1015.9,
                @1015.5,
                @1012.3,
                @1009.5,
                @1009.6,
                @1010.2,
                @1013.1,
                @1016.9,
                @1018.2,
                @1016.7
            ],
            @"marker": @{
                @"enabled": @false
            },
            @"dashStyle": @"shortdot",
            @"tooltip": @{
                @"valueSuffix": @" mb"
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
                @"valueSuffix": @" °C"
            }
        }
    ]
};
   
    [self.view addSubview:chartView];
}

@end