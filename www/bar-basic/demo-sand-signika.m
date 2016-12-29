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
                               @"chart": @{
                                       @"type": @"bar"
                                       },
                               @"title": @{
                                       @"text": @"Historic World Population by Region"
                                       },
                               @"subtitle": @{
                                       @"text": @"Source: <a href=\"https://en.wikipedia.org/wiki/World_population\">Wikipedia.org</a>"
                                       },
                               @"xAxis": @{
                                       @"categories": @[
                                               @"Africa",
                                               @"America",
                                               @"Asia",
                                               @"Europe",
                                               @"Oceania"
                                               ],
                                       @"title": @{
                                               @"text": [NSNull null]
                                               }
                                       },
                               @"yAxis": @{
                                       @"min": @0,
                                       @"title": @{
                                               @"text": @"Population (millions)",
                                               @"align": @"high"
                                               },
                                       @"labels": @{
                                               @"overflow": @"justify"
                                               }
                                       },
                               @"tooltip": @{
                                       @"valueSuffix": @" millions"
                                       },
                               @"plotOptions": @{
                                       @"bar": @{
                                               @"dataLabels": @{
                                                       @"enabled": @true
                                                       }
                                               }
                                       },
                               @"legend": @{
                                       @"layout": @"vertical",
                                       @"align": @"right",
                                       @"verticalAlign": @"top",
                                       @"x": @-40,
                                       @"y": @80,
                                       @"floating": @true,
                                       @"borderWidth": @1,
                                       @"backgroundColor": @"#FFFFFF",
                                       @"shadow": @true
                                       },
                               @"credits": @{
                                       @"enabled": @false
                                       },
                               @"series": @[
                                       @{
                                           @"name": @"Year 1800",
                                           @"data": @[
                                                   @107,
                                                   @31,
                                                   @635,
                                                   @203,
                                                   @2
                                                   ]
                                           },
                                       @{
                                           @"name": @"Year 1900",
                                           @"data": @[
                                                   @133,
                                                   @156,
                                                   @947,
                                                   @408,
                                                   @6
                                                   ]
                                           },
                                       @{
                                           @"name": @"Year 2012",
                                           @"data": @[
                                                   @1052,
                                                   @954,
                                                   @4250,
                                                   @740,
                                                   @38
                                                   ]
                                           }
                                       ]
                               };
    
    [self.view addSubview:chartView];
}

@end
