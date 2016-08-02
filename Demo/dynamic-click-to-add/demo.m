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
        @"type": @"scatter",
        @"margin": @[
            @70,
            @50,
            @60,
            @80
        ],
        @"events": @{}
    },
    @"title": @{
        @"text": @"User supplied data"
    },
    @"subtitle": @{
        @"text": @"Click the plot area to add a point. Click a point to remove it."
    },
    @"xAxis": @{
        @"gridLineWidth": @1,
        @"minPadding": @0.2,
        @"maxPadding": @0.2,
        @"maxZoom": @60
    },
    @"yAxis": @{
        @"title": @{
            @"text": @"Value"
        },
        @"minPadding": @0.2,
        @"maxPadding": @0.2,
        @"maxZoom": @60,
        @"plotLines": @[
            @{
                @"value": @0,
                @"width": @1,
                @"color": @"#808080"
            }
        ]
    },
    @"legend": @{
        @"enabled": @false
    },
    @"exporting": @{
        @"enabled": @false
    },
    @"plotOptions": @{
        @"series": @{
            @"lineWidth": @1,
            @"point": @{
                @"events": @{}
            }
        }
    },
    @"series": @[
        @{
            @"data": @[
                @[
                    @20,
                    @20
                ],
                @[
                    @80,
                    @80
                ]
            ]
        }
    ]
};
    
    [self.view addSubview:self.chartView];
}

@end
