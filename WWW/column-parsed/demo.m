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
    @"data": @{
        @"table": @"datatable"
    },
    @"chart": @{
        @"type": @"column"
    },
    @"title": @{
        @"text": @"Data extracted from a HTML table in the page"
    },
    @"yAxis": @{
        @"allowDecimals": @false,
        @"title": @{
            @"text": @"Units"
        }
    },
    @"tooltip": @{}
};
    
    [self.view addSubview:self.chartView];
}

@end
