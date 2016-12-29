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
                                       @"type": @"column"
                                       },
                               @"title": @{
                                       @"text": @"Stacked column chart"
                                       },
                               @"xAxis": @{
                                       @"categories": @[
                                               @"Apples",
                                               @"Oranges",
                                               @"Pears",
                                               @"Grapes",
                                               @"Bananas"
                                               ]
                                       },
                               @"yAxis": @{
                                       @"min": @0,
                                       @"title": @{
                                               @"text": @"Total fruit consumption"
                                               },
                                       @"stackLabels": @{
                                               @"enabled": @true,
                                               @"style": @{
                                                       @"fontWeight": @"bold",
                                                       @"color": @"gray"
                                                       }
                                               }
                                       },
                               @"legend": @{
                                       @"align": @"right",
                                       @"x": @-30,
                                       @"verticalAlign": @"top",
                                       @"y": @25,
                                       @"floating": @true,
                                       @"backgroundColor": @"#F0F0EA",
                                       @"borderColor": @"#CCC",
                                       @"borderWidth": @1,
                                       @"shadow": @false
                                       },
                               @"tooltip": @{
                                       @"headerFormat": @"<b>{point.x}</b><br/>",
                                       @"pointFormat": @"{series.name}: {point.y}<br/>Total: {point.stackTotal}"
                                       },
                               @"plotOptions": @{
                                       @"column": @{
                                               @"stacking": @"normal",
                                               @"dataLabels": @{
                                                       @"enabled": @true,
                                                       @"color": @"white"
                                                       @"style": @{
                                                               @"textShadow": @"0 0 3px black"
                                                               }
                                                       }
                                               }
                                       },
                               @"series": @[
                                       @{
                                           @"name": @"John",
                                           @"data": @[
                                                   @5,
                                                   @3,
                                                   @4,
                                                   @7,
                                                   @2
                                                   ]
                                           },
                                       @{
                                           @"name": @"Jane",
                                           @"data": @[
                                                   @2,
                                                   @2,
                                                   @3,
                                                   @2,
                                                   @1
                                                   ]
                                           },
                                       @{
                                           @"name": @"Joe",
                                           @"data": @[
                                                   @3,
                                                   @4,
                                                   @4,
                                                   @2,
                                                   @5
                                                   ]
                                           }
                                       ]
                               };
    
    [self.view addSubview:chartView];
}

@end
