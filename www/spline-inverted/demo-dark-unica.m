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
        @"type": @"spline",
        @"inverted": @true
    },
    @"title": @{
        @"text": @"Atmosphere Temperature by Altitude"
    },
    @"subtitle": @{
        @"text": @"According to the Standard Atmosphere Model"
    },
    @"xAxis": @{
        @"reversed": @false,
        @"title": @{
            @"enabled": @true,
            @"text": @"Altitude"
        },
        @"labels": @{},
        @"maxPadding": @0.05,
        @"showLastLabel": @true
    },
    @"yAxis": @{
        @"title": @{
            @"text": @"Temperature"
        },
        @"labels": @{},
        @"lineWidth": @2
    },
    @"legend": @{
        @"enabled": @false
    },
    @"tooltip": @{
        @"headerFormat": @"<b>{series.name}</b><br/>",
        @"pointFormat": @"{point.x} km: {point.y}°C"
    },
    @"plotOptions": @{
        @"spline": @{
            @"marker": @{
                @"enable": @false
            }
        }
    },
    @"series": @[
        @{
            @"name": @"Temperature",
            @"data": @[
                @[
                    @0,
                    @15
                ],
                @[
                    @10,
                    @-50
                ],
                @[
                    @20,
                    @-56.5
                ],
                @[
                    @30,
                    @-46.5
                ],
                @[
                    @40,
                    @-22.1
                ],
                @[
                    @50,
                    @-2.5
                ],
                @[
                    @60,
                    @-27.7
                ],
                @[
                    @70,
                    @-55.7
                ],
                @[
                    @80,
                    @-76.5
                ]
            ]
        }
    ]
};
    
    [self.view addSubview:chartView];
}

@end
