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
        @"type": @"funnel",
        @"marginRight": @100
    },
    @"title": @{
        @"text": @"Sales funnel",
        @"x": @-50
    },
    @"plotOptions": @{
        @"series": @{
            @"dataLabels": @{
                @"enabled": @true,
                @"format": @"<b>{point.name}</b> ({point.y:,.0f})",
                @"color": @"black",
                @"softConnector": @true
            },
            @"neckWidth": @"30%",
            @"neckHeight": @"25%"
        }
    },
    @"legend": @{
        @"enabled": @false
    },
    @"series": @[
        @{
            @"name": @"Unique users",
            @"data": @[
                @[
                    @"Website visits",
                    @15654
                ],
                @[
                    @"Downloads",
                    @4064
                ],
                @[
                    @"Requested price list",
                    @1987
                ],
                @[
                    @"Invoice sent",
                    @976
                ],
                @[
                    @"Finalized",
                    @846
                ]
            ]
        }
    ]
};
    
    [self.view addSubview:chartView];
}

@end
