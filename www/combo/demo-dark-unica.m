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
    @"title": @{
        @"text": @"Combination chart"
    },
    @"xAxis": @{
        @"categories": @[
            @"Apples",
            @"Oranges",
            @"Pears",
            @"Bananas",
            @"Plums"
        ]
    },
    @"labels": @{
        @"items": @[
            @{
                @"html": @"Total fruit consumption",
                @"style": @{
                    @"left": @"50px",
                    @"top": @"18px",
                    @"color": @"#C0C0C0"
                }
            }
        ]
    },
    @"series": @[
        @{
            @"type": @"column",
            @"name": @"Jane",
            @"data": @[
                @3,
                @2,
                @1,
                @3,
                @4
            ]
        },
        @{
            @"type": @"column",
            @"name": @"John",
            @"data": @[
                @2,
                @3,
                @5,
                @7,
                @6
            ]
        },
        @{
            @"type": @"column",
            @"name": @"Joe",
            @"data": @[
                @4,
                @3,
                @3,
                @9,
                @0
            ]
        },
        @{
            @"type": @"spline",
            @"name": @"Average",
            @"data": @[
                @3,
                @2.67,
                @3,
                @6.33,
                @3.33
            ],
            @"marker": @{
                @"lineWidth": @2,
                @"fillColor": @"white",
                @"lineColor": @"#7798BF"
            }
        },
        @{
            @"type": @"pie",
            @"name": @"Total consumption",
            @"data": @[
                @{
                    @"name": @"Jane",
                    @"y": @13,
                    @"color": @"#2b908f"
                },
                @{
                    @"name": @"John",
                    @"y": @23,
                    @"color": @"#90ee7e"
                },
                @{
                    @"name": @"Joe",
                    @"y": @19,
                    @"color": @"#f45b5b"
                }
            ],
            @"center": @[
                @100,
                @80
            ],
            @"size": @100,
            @"showInLegend": @false,
            @"dataLabels": @{
                @"enabled": @false
            }
        }
    ]
};
    
    [self.view addSubview:chartView];
}

@end