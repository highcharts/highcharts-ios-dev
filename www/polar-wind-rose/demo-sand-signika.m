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
    @"data": @{
        @"table": @"freq",
        @"startRow": @1,
        @"endRow": @17,
        @"endColumn": @7
    },
    @"chart": @{
        @"polar": @true,
        @"type": @"column"
    },
    @"title": @{
        @"text": @"Wind rose for South Shore Met Station, Oregon"
    },
    @"subtitle": @{
        @"text": @"Source: or.water.usgs.gov"
    },
    @"pane": @{
        @"size": @"85%"
    },
    @"legend": @{
        @"align": @"right",
        @"verticalAlign": @"top",
        @"y": @100,
        @"layout": @"vertical"
    },
    @"xAxis": @{
        @"tickmarkPlacement": @"on"
    },
    @"yAxis": @{
        @"min": @0,
        @"endOnTick": @false,
        @"showLastLabel": @true,
        @"title": @{
            @"text": @"Frequency (%)"
        },
        @"labels": @{
            @"format": @"{value}%"
        },
        @"reversedStacks": @false
    },
    @"tooltip": @{
        @"valueSuffix": @"%"
    },
    @"plotOptions": @{
        @"series": @{
            @"stacking": @"normal",
            @"shadow": @false,
            @"groupPadding": @0,
            @"pointPlacement": @"on"
        }
    }
};
    
    [self.view addSubview:chartView];
}

@end