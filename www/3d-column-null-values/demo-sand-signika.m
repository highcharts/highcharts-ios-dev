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
                                       @"type": @"column",
                                       @"options3d": @{
                                               @"enabled": @true,
                                               @"alpha": @10,
                                               @"beta": @25,
                                               @"depth": @70
                                               }
                                       },
                               @"title": @{
                                       @"text": @"3D chart with null values"
                                       },
                               @"subtitle": @{
                                       @"text": @"Notice the difference between a 0 value and a null point"
                                       },
                               @"plotOptions": @{
                                       @"column": @{
                                               @"depth": @25
                                               }
                                       },
                               @"xAxis": @{
                                       @"categories": @[
                                               @"Jan",
                                               @"Feb",
                                               @"Mar",
                                               @"Apr",
                                               @"May",
                                               @"Jun",
                                               @"Jul",
                                               @"Aug",
                                               @"Sep",
                                               @"Oct"
                                               ]
                                       },
                               @"yAxis": @{
                                       @"title": @{
                                               @"text": [NSNull null]
                                               }
                                       },
                               @"series": @[
                                       @{
                                           @"name": @"Sales",
                                           @"data": @[
                                                   @2,
                                                   @3,
                                                   [NSNull null],
                                                   @4,
                                                   @0,
                                                   @5,
                                                   @1,
                                                   @4,
                                                   @6,
                                                   @3
                                                   ]
                                           }
                                       ]
                               };
    
    [self.view addSubview:chartView];
}

@end
