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
                                       @"type": @"area",
                                       @"spacingBottom": @30
                                       },
                               @"title": @{
                                       @"text": @"Fruit consumption *"
                                       },
                               @"subtitle": @{
                                       @"text": @"* Jane's banana consumption is unknown",
                                       @"floating": @true,
                                       @"align": @"right",
                                       @"verticalAlign": @"bottom",
                                       @"y": @15
                                       },
                               @"legend": @{
                                       @"layout": @"vertical",
                                       @"align": @"left",
                                       @"verticalAlign": @"top",
                                       @"x": @150,
                                       @"y": @100,
                                       @"floating": @true,
                                       @"borderWidth": @1,
                                       @"backgroundColor": @"#FFFFFF"
                                       },
                               @"xAxis": @{
                                       @"categories": @[
                                               @"Apples",
                                               @"Pears",
                                               @"Oranges",
                                               @"Bananas",
                                               @"Grapes",
                                               @"Plums",
                                               @"Strawberries",
                                               @"Raspberries"
                                               ]
                                       },
                               @"yAxis": @{
                                       @"title": @{
                                               @"text": @"Y-Axis"
                                               },
                                       @"labels": @{}
                                       },
                               @"tooltip": @{},
                               @"plotOptions": @{
                                       @"area": @{
                                               @"fillOpacity": @0.5
                                               }
                                       },
                               @"credits": @{
                                       @"enabled": @false
                                       },
                               @"series": @[
                                       @{
                                           @"name": @"John",
                                           @"data": @[
                                                   @0,
                                                   @1,
                                                   @4,
                                                   @4,
                                                   @5,
                                                   @2,
                                                   @3,
                                                   @7
                                                   ]
                                           },
                                       @{
                                           @"name": @"Jane",
                                           @"data": @[
                                                   @1,
                                                   @0,
                                                   @3,
                                                   [NSNull null],
                                                   @3,
                                                   @1,
                                                   @2,
                                                   @1
                                                   ]
                                           }
                                       ]
                               };
    
    [self.view addSubview:chartView];
}

@end
