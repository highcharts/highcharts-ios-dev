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
    
    HIOptions *options = [[HIOptions alloc]init];
    
    HIChart *chart = [[HIChart alloc]init];
    chart.type = @"bar";
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"Stacked bar chart";
    
    HIXAxis *xaxis = [[HIXAxis alloc]init];
    xaxis.categories = [NSMutableArray arrayWithObjects:@"Apples",
                        @"Oranges",
                        @"Pears",
                        @"Grapes",
                        @"Bananas", nil];
    
    HIYAxis *yaxis = [[HIYAxis alloc]init];
    yaxis.min = @0;
    yaxis.title = [[HIYAxisTitle alloc]init];
    yaxis.title.text = @"Total fruit consumption";
    
    HILegend *legend = [[HILegend alloc]init];
    legend.reversed = @true;
    
    HIPlotOptions *plotoptions = [[HIPlotOptions alloc]init];
    plotoptions.series = [[HIPlotOptionsSeries alloc]init];
    plotoptions.series.stacking = @"normal";
    
    HIBar *bar1 = [[HIBar alloc]init];
    bar1.name = @"John";
    bar1.data = [NSMutableArray arrayWithObjects:@5,
                 @3,
                 @4,
                 @7,
                 @2, nil];
    
    HIBar *bar2 = [[HIBar alloc]init];
    bar2.name = @"Jane";
    bar2.data = [NSMutableArray arrayWithObjects:@2,
                 @2,
                 @3,
                 @2,
                 @1, nil];
    
    HIBar *bar3 = [[HIBar alloc]init];
    bar3.name = @"Joe";
    bar3.data = [NSMutableArray arrayWithObjects:@3,
                 @4,
                 @4,
                 @2,
                 @5, nil];
    
    options.chart = chart;
    options.title = title;
    options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
    options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
    options.legend = legend;
    options.plotOptions = plotoptions;
    options.series = [NSMutableArray arrayWithObjects:bar1, bar2, bar3, nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
