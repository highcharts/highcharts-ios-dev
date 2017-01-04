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
    @"xAxis": @{
        @"min": @-0.5,
        @"max": @5.5
    },
    @"yAxis": @{
        @"min": @0
    },
    @"title": @{
        @"text": @"Scatter plot with regression line"
    },
    @"series": @[
        @{
            @"type": @"line",
            @"name": @"Regression Line",
            @"data": @[
                @[
                    @0,
                    @1.11
                ],
                @[
                    @5,
                    @4.51
                ]
            ],
            @"marker": @{
                @"enabled": @false
            },
            @"states": @{
                @"hover": @{
                    @"lineWidth": @0
                }
            },
            @"enableMouseTracking": @false
        },
        @{
            @"type": @"scatter",
            @"name": @"Observations",
            @"data": @[
                @1,
                @1.5,
                @2.8,
                @3.5,
                @3.9,
                @4.2
            ],
            @"marker": @{
                @"radius": @4
            }
        }
    ]
};
    
    [self.view addSubview:chartView];
}

@end
