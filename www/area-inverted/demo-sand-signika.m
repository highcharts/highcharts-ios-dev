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
                                       @"type": @"area",
                                       @"inverted": @true
                                       },
                               @"title": @{
                                       @"text": @"Average fruit consumption during one week"
                                       },
                               @"subtitle": @{
                                       @"style": @{
                                               @"position": @"absolute",
                                               @"right": @"0px",
                                               @"bottom": @"10px"
                                               }
                                       },
                               @"legend": @{
                                       @"layout": @"vertical",
                                       @"align": @"right",
                                       @"verticalAlign": @"top",
                                       @"x": @-150,
                                       @"y": @100,
                                       @"floating": @true,
                                       @"borderWidth": @1,
                                       @"backgroundColor": @"#FFFFFF"
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
                                               ]
                                       },
                               @"yAxis": @{
                                       @"title": @{
                                               @"text": @"Number of units"
                                               },
                                       @"labels": @{},
                                       @"min": @0
                                       },
                               @"plotOptions": @{
                                       @"area": @{
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
