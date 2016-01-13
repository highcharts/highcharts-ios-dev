//
//  ViewController.m
//  HighchartsDemo
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import "RootViewController.h"
#import <Highcharts/Highcharts.h>

@interface RootViewController ()
@property (strong, nonatomic) HIGChartView *chart;
@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.chart = [[HIGChartView alloc] initWithFrame:self.view.bounds];
    
    [self.view addSubview:self.chart];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    NSString *charts = [NSString stringWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"first-chart" ofType:@"js"] encoding:NSUTF8StringEncoding error:nil];
    
    [self.chart loadHighcharts:charts];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
