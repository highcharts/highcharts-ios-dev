//
//  TestViewController.m
//  DevGround
//
//  Created by krzysiek on 16.05.2017.
//  Copyright © 2017 Highsoft AS. All rights reserved.
//

#import "TestViewController.h"
#import <Highcharts/Highcharts.h>

@interface TestViewController ()<HIChartViewDelegate>
@property (strong, nonatomic)HIChartView *chartView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *leadingConstraint;
@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HIOptions *options = [[HIOptions alloc]init];
    
    HIChart *chart = [[HIChart alloc]init];
    chart.type = @"column";
    chart.animation = @NO;
    chart.backgroundColor = [[HIColor alloc] initWithRGBA:255 green:255 blue:255 alpha:0.02];
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"Column chart with negative values";
    
    HIXAxis *xaxis = [[HIXAxis alloc]init];
    xaxis.categories = [NSMutableArray arrayWithObjects:@"Apples",
                        @"Orange",
                        @"Pear",
                        @"Grape",
                        @"Banana", nil];
    xaxis.labels = [HILabels new];
    xaxis.labels.rotation = @0;
    xaxis.labels.useHTML = @NO;
    xaxis.labels.formatter = [[HIFunction alloc] initWithFunction:@"function() {  return this.value + 's';}"];
    
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
    
    self.chartView.viewController = self;
    self.chartView.options = options;
    self.chartView.delegate = self;
}


- (void)chartViewDidLoad:(HIChartView *)chart {

}

- (IBAction)refreshAction:(id)sender {
    
}

- (IBAction)resizeAction:(id)sender {
    self.leadingConstraint.constant = self.leadingConstraint.constant + 100;
    [UIView animateWithDuration:0.5 animations:^{
        [self.view layoutIfNeeded];
    }];
}


@end
