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
        @"renderTo": @"container",
        @"type": @"column",
        @"options3d": @{
            @"enabled": @true,
            @"alpha": @15,
            @"beta": @15,
            @"depth": @50,
            @"viewDistance": @25
        }
    },
    @"title": @{
        @"text": @"Chart rotation demo"
    },
    @"subtitle": @{
        @"text": @"Test options by dragging the sliders below"
    },
    @"plotOptions": @{
        @"column": @{
            @"depth": @25
        }
    },
    @"series": @[
        @{
            @"data": @[
                @29.9,
                @71.5,
                @106.4,
                @129.2,
                @144,
                @176,
                @135.6,
                @148.5,
                @216.4,
                @194.1,
                @95.6,
                @54.4
            ]
        }
    ]
};
    
    [self.view addSubview:chartView];
}

@end
