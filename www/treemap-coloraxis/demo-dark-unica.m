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
                            @"colorAxis": @{
                                @"minColor": @"#FFFFFF",
                                @"maxColor": @"#2b908f"
                            },
                            @"series": @[
                                @{
                                    @"type": @"treemap",
                                    @"layoutAlgorithm": @"squarified",
                                    @"data": @[
                                        @{
                                            @"name": @"A",
                                            @"value": @6,
                                            @"colorValue": @1
                                        },
                                        @{
                                            @"name": @"B",
                                            @"value": @6,
                                            @"colorValue": @2
                                        },
                                        @{
                                            @"name": @"C",
                                            @"value": @4,
                                            @"colorValue": @3
                                        },
                                        @{
                                            @"name": @"D",
                                            @"value": @3,
                                            @"colorValue": @4
                                        },
                                        @{
                                            @"name": @"E",
                                            @"value": @2,
                                            @"colorValue": @5
                                        },
                                        @{
                                            @"name": @"F",
                                            @"value": @2,
                                            @"colorValue": @6
                                        },
                                        @{
                                            @"name": @"G",
                                            @"value": @1,
                                            @"colorValue": @7
                                        }
                                    ]
                                }
                            ],
                            @"title": @{
                                @"text": @"Highcharts Treemap"
                            }
                        };
    
    [self.view addSubview:chartView];
}

@end
