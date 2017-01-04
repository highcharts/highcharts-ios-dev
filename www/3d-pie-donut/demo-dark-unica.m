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
        @"type": @"pie",
        @"options3d": @{
            @"enabled": @true,
            @"alpha": @45
        }
    },
    @"title": @{
        @"text": @"Contents of Highsoft's weekly fruit delivery"
    },
    @"subtitle": @{
        @"text": @"3D donut in Highcharts"
    },
    @"plotOptions": @{
        @"pie": @{
            @"innerSize": @100,
            @"depth": @45
        }
    },
    @"series": @[
        @{
            @"name": @"Delivered amount",
            @"data": @[
                @[
                    @"Bananas",
                    @8
                ],
                @[
                    @"Kiwi",
                    @3
                ],
                @[
                    @"Mixed nuts",
                    @1
                ],
                @[
                    @"Oranges",
                    @6
                ],
                @[
                    @"Apples",
                    @8
                ],
                @[
                    @"Pears",
                    @4
                ],
                @[
                    @"Clementines",
                    @4
                ],
                @[
                    @"Reddish (bag)",
                    @1
                ],
                @[
                    @"Grapes (bunch)",
                    @1
                ]
            ]
        }
    ]
};
    
    [self.view addSubview:chartView];
}

@end
