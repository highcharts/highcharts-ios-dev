//
//  TestViewController.m
//  DevGround
//
//  Created by krzysiek on 16.05.2017.
//  Copyright © 2017 Highsoft AS. All rights reserved.
//

#import "TestViewController.h"
#import <Highcharts/Highcharts.h>

@interface TestViewController ()
@property (strong, nonatomic)HIGChartView *chartView;
@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HIOptions *options = [[HIOptions alloc]init];
    
    HIChart *chart = [[HIChart alloc]init];
    chart.type = @"column";
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"Column chart with negative values";
    
    HIXAxis *xaxis = [[HIXAxis alloc]init];
    xaxis.categories = [NSMutableArray arrayWithObjects:@"Apples",
                        @"Oranges",
                        @"Pears",
                        @"Grapes",
                        @"Bananas", nil];
    
    HICredits *credits = [[HICredits alloc]init];
    credits.enabled = @false;
    
    HIColumn *column1 = [[HIColumn alloc]init];
    column1.name = @"John";
    column1.data = [NSMutableArray arrayWithObjects:@5,
                    @3,
                    @4,
                    @7,
                    @2, nil];
    
    HIColumn *column2 = [[HIColumn alloc]init];
    column2.name = @"Jane";
    column2.data = [NSMutableArray arrayWithObjects:@2,
                    @-2,
                    @-3,
                    @2,
                    @1, nil];
    
    HIColumn *column3 = [[HIColumn alloc]init];
    column3.name = @"Joe";
    column3.data = [NSMutableArray arrayWithObjects:@3,
                    @4,
                    @4,
                    @-2,
                    @5, nil];
    
    options.chart = chart;
    options.title = title;
    options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
    options.credits = credits;
    options.series = [NSMutableArray arrayWithObjects: column1, column2, column3,  nil];
    self.chartView.options = options;
    [self.chartView loadChart];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
