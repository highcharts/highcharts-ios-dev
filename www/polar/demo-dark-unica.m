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
        @"polar": @true
    },
    @"title": @{
        @"text": @"Highcharts Polar Chart"
    },
    @"pane": @{
        @"startAngle": @0,
        @"endAngle": @360
    },
    @"xAxis": @{
        @"tickInterval": @45,
        @"min": @0,
        @"max": @360,
        @"labels": @{
            @"format": @"{value}°"
        }
    },
    @"yAxis": @{
        @"min": @0
    },
    @"plotOptions": @{
        @"series": @{
            @"pointStart": @0,
            @"pointInterval": @45
        },
        @"column": @{
            @"pointPadding": @0,
            @"groupPadding": @0
        }
    },
    @"series": @[
        @{
            @"type": @"column",
            @"name": @"Column",
            @"data": @[
                @8,
                @7,
                @6,
                @5,
                @4,
                @3,
                @2,
                @1
            ],
            @"pointPlacement": @"between"
        },
        @{
            @"type": @"line",
            @"name": @"Line",
            @"data": @[
                @1,
                @2,
                @3,
                @4,
                @5,
                @6,
                @7,
                @8
            ]
        },
        @{
            @"type": @"area",
            @"name": @"Area",
            @"data": @[
                @1,
                @8,
                @2,
                @7,
                @3,
                @6,
                @4,
                @5
            ]
        }
    ]
};
    
    [self.view addSubview:chartView];
}

@end
