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
        @"type": @"column",
        @"options3d": @{
            @"enabled": @true,
            @"alpha": @15,
            @"beta": @15,
            @"viewDistance": @25,
            @"depth": @40
        }
    },
    @"title": @{
        @"text": @"Total fruit consumption, grouped by gender"
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
    @"yAxis": @{
        @"allowDecimals": @false,
        @"min": @0,
        @"title": @{
            @"text": @"Number of fruits"
        }
    },
    @"tooltip": @{
        @"headerFormat": @"<b>{point.key}</b><br>",
        @"pointFormat": @"<span style=\"color:{series.color}\">●</span> {series.name}: {point.y} / {point.stackTotal}"
    },
    @"plotOptions": @{
        @"column": @{
            @"stacking": @"normal",
            @"depth": @40
        }
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
            ],
            @"stack": @"male"
        },
        @{
            @"name": @"Joe",
            @"data": @[
                @3,
                @4,
                @4,
                @2,
                @5
            ],
            @"stack": @"male"
        },
        @{
            @"name": @"Jane",
            @"data": @[
                @2,
                @5,
                @6,
                @2,
                @1
            ],
            @"stack": @"female"
        },
        @{
            @"name": @"Janet",
            @"data": @[
                @3,
                @0,
                @4,
                @4,
                @3
            ],
            @"stack": @"female"
        }
    ]
};
    
    [self.view addSubview:chartView];
}

@end
