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
                                       @"plotBackgroundColor": [NSNull null],
                                       @"plotBorderWidth": [NSNull null],
                                       @"plotShadow": @false,
                                       @"type": @"pie"
                                       },
                               @"title": @{
                                       @"text": @"Browser market shares January, 2015 to May, 2015"
                                       },
                               @"tooltip": @{
                                       @"pointFormat": @"{series.name}: <b>{point.percentage:.1f}%</b>"
                                       },
                               @"plotOptions": @{
                                       @"pie": @{
                                               @"allowPointSelect": @true,
                                               @"cursor": @"pointer",
                                               @"dataLabels": @{
                                                       @"enabled": @false
                                                       },
                                               @"showInLegend": @true
                                               }
                                       },
                               @"series": @[
                                       @{
                                           @"name": @"Brands",
                                           @"colorByPoint": @true,
                                           @"data": @[
                                                   @{
                                                       @"name": @"Microsoft Internet Explorer",
                                                       @"y": @56.33
                                                       },
                                                   @{
                                                       @"name": @"Chrome",
                                                       @"y": @24.03,
                                                       @"sliced": @true,
                                                       @"selected": @true
                                                       },
                                                   @{
                                                       @"name": @"Firefox",
                                                       @"y": @10.38
                                                       },
                                                   @{
                                                       @"name": @"Safari",
                                                       @"y": @4.77
                                                       },
                                                   @{
                                                       @"name": @"Opera",
                                                       @"y": @0.91
                                                       },
                                                   @{
                                                       @"name": @"Proprietary or Undetectable",
                                                       @"y": @0.2
                                                       }
                                                   ]
                                           }
                                       ]
                               };
    
    [self.view addSubview:chartView];
}

@end
