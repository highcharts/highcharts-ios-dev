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
    
    self.chartView.options = @{
    @"chart": @{
        @"type": @"pie",
        @"options3d": @{
            @"enabled": @true,
            @"alpha": @45,
            @"beta": @0
        }
    },
    @"title": @{
        @"text": @"Browser market shares at a specific website, 2014"
    },
    @"tooltip": @{
        @"pointFormat": @"{series.name}: <b>{point.percentage:.1f}%</b>"
    },
    @"plotOptions": @{
        @"pie": @{
            @"allowPointSelect": @true,
            @"cursor": @"pointer",
            @"depth": @35,
            @"dataLabels": @{
                @"enabled": @true,
                @"format": @"{point.name}"
            }
        }
    },
    @"series": @[
        @{
            @"type": @"pie",
            @"name": @"Browser share",
            @"data": @[
                @[
                    @"Firefox",
                    @45
                ],
                @[
                    @"IE",
                    @26.8
                ],
                @{
                    @"name": @"Chrome",
                    @"y": @12.8,
                    @"sliced": @true,
                    @"selected": @true
                },
                @[
                    @"Safari",
                    @8.5
                ],
                @[
                    @"Opera",
                    @6.2
                ],
                @[
                    @"Others",
                    @0.7
                ]
            ]
        }
    ]
};
    
    [self.view addSubview:self.chartView];
}

@end
