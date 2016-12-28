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
        @"type": @"area"
    },
    @"title": @{
        @"text": @"Area chart with negative values"
    },
    @"xAxis": @{
        @"categories": @[
            @"Apples",
            @"Oranges",
            @"Pears",
            @"Grapes",
            @"Bananas"
        ]
    },
    @"credits": @{
        @"enabled": @false
    },
    @"series": @[
        @{
            @"name": @"John",
            @"data": @[
                @5,
                @3,
                @4,
                @7,
                @2
            ]
        },
        @{
            @"name": @"Jane",
            @"data": @[
                @2,
                @-2,
                @-3,
                @2,
                @1
            ]
        },
        @{
            @"name": @"Joe",
            @"data": @[
                @3,
                @4,
                @4,
                @-2,
                @5
            ]
        }
    ]
};
    
    [self.view addSubview:chartView];
}

@end
