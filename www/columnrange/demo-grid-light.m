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
        @"type": @"columnrange",
        @"inverted": @true
    },
    @"title": @{
        @"text": @"Temperature variation by month"
    },
    @"subtitle": @{
        @"text": @"Observed in Vik i Sogn, Norway"
    },
    @"xAxis": @{
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
    },
    @"yAxis": @{
        @"title": @{
            @"text": @"Temperature ( °C )"
        }
    },
    @"tooltip": @{
        @"valueSuffix": @"°C"
    },
    @"plotOptions": @{
        @"columnrange": @{
            @"dataLabels": @{
                @"enabled": @true,
                @"format": @"{point.y}°C"
            }
        }
    },
    @"legend": @{
        @"enabled": @false
    },
    @"series": @[
        @{
            @"name": @"Temperatures",
            @"data": @[
                @[
                    @-9.7,
                    @9.4
                ],
                @[
                    @-8.7,
                    @6.5
                ],
                @[
                    @-3.5,
                    @9.4
                ],
                @[
                    @-1.4,
                    @19.9
                ],
                @[
                    @0,
                    @22.6
                ],
                @[
                    @2.9,
                    @29.5
                ],
                @[
                    @9.2,
                    @30.7
                ],
                @[
                    @7.3,
                    @26.5
                ],
                @[
                    @4.4,
                    @18
                ],
                @[
                    @-3.1,
                    @11.4
                ],
                @[
                    @-5.2,
                    @10.4
                ],
                @[
                    @-13.5,
                    @9.8
                ]
            ]
        }
    ]
};
    
    [self.view addSubview:chartView];
}

@end