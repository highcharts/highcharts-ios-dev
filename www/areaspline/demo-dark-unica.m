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
                                       @"type": @"areaspline"
                                       },
                               @"title": @{
                                       @"text": @"Average fruit consumption during one week"
                                       },
                               @"legend": @{
                                       @"layout": @"vertical",
                                       @"align": @"left",
                                       @"verticalAlign": @"top",
                                       @"x": @150,
                                       @"y": @100,
                                       @"floating": @true,
                                       @"borderWidth": @1,
                                       @"backgroundColor": @"rgba(0, 0, 0, 0.5)"
                                       },
                               @"xAxis": @{
                                       @"categories": @[
                                               @"Monday",
                                               @"Tuesday",
                                               @"Wednesday",
                                               @"Thursday",
                                               @"Friday",
                                               @"Saturday",
                                               @"Sunday"
                                               ],
                                       @"plotBands": @[
                                               @{
                                                   @"from": @4.5,
                                                   @"to": @6.5,
                                                   @"color": @"rgba(68, 170, 213, .2)"
                                                   }
                                               ]
                                       },
                               @"yAxis": @{
                                       @"title": @{
                                               @"text": @"Fruit units"
                                               }
                                       },
                               @"tooltip": @{
                                       @"shared": @true,
                                       @"valueSuffix": @" units"
                                       },
                               @"credits": @{
                                       @"enabled": @false
                                       },
                               @"plotOptions": @{
                                       @"areaspline": @{
                                               @"fillOpacity": @0.5
                                               }
                                       },
                               @"series": @[
                                       @{
                                           @"name": @"John",
                                           @"data": @[
                                                   @3,
                                                   @4,
                                                   @3,
                                                   @5,
                                                   @4,
                                                   @10,
                                                   @12
                                                   ]
                                           },
                                       @{
                                           @"name": @"Jane",
                                           @"data": @[
                                                   @1,
                                                   @3,
                                                   @4,
                                                   @3,
                                                   @3,
                                                   @5,
                                                   @4
                                                   ]
                                           }
                                       ]
                               };
    
    [self.view addSubview:chartView];
}

@end