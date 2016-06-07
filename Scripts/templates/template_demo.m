//
//  Chart.m
//  Highcharts
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Highcharts/Highcharts.h>

@implementation Chart

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HIGChartView *chartView = [[HIGChartView alloc] initWithFrame:self.view.bounds];
    
    self.chartView.viewController = self;
    self.chartView.theme = {{THEME}};
    self.chartView.plugins = {{PLUGINS}};
    
    self.chartView.options = {{OPTIONS}}
    
    [self.view addSubview:self.chartView];
}

@end
