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
        @"backgroundColor": @"white",
        @"events": @{}
    },
    @"title": @{
        @"text": @"Highcharts export server overview",
        @"style": @{
            @"color": @"black"
        }
    }
};
    
    [self.view addSubview:self.chartView];
}

@end
