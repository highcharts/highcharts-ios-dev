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
    chart.type = @"column";
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"Total fruit consumtion, grouped by gender";
    
    HIXAxis *xaxis = [[HIXAxis alloc]init];
    xaxis.categories = [NSMutableArray arrayWithObjects:@"Apples",
                        @"Oranges",
                        @"Pears",
                        @"Grapes",
                        @"Bananas", nil];
    
    HIYAxis *yaxis = [[HIYAxis alloc]init];
    yaxis.allowDecimals = @false;
    yaxis.min = @0;
    yaxis.title = [[HIYAxisTitle alloc]init];
    yaxis.title.text = @"Number of fruits";
    
    HITooltip *tooltip = [[HITooltip alloc]init];
    tooltip.pointFormat = @"{series.name} :{point.y} <br/> Total: {point.stackTotal}";
    
    HIPlotOptions *plotoptions = [[HIPlotOptions alloc]init];
    plotoptions.column = [[HIPlotOptionsColumn alloc]init];
    plotoptions.column.stacking = @"normal";
    
    HIColumn *column1 = [[HIColumn alloc]init];
    column1.name = @"John";
    column1.stack = @"male";
    column1.data = [NSMutableArray arrayWithObjects:@5,
                    @3,
                    @4,
                    @7,
                    @2
                    , nil];
    
    HIColumn *column2 = [[HIColumn alloc]init];
    column2.name = @"Joe";
    column2.data = [NSMutableArray arrayWithObjects:@3,
                    @4,
                    @4,
                    @2,
                    @5, nil];
    column2.stack = @"male";
    
    HIColumn *column3 = [[HIColumn alloc]init];
    column3.name = @"Jane";
    column3.data = [NSMutableArray arrayWithObjects:@2,
                    @5,
                    @6,
                    @2,
                    @1, nil];
    column3.stack = @"female";
    
    HIColumn *column4 = [[HIColumn alloc]init];
    column4.name = @"Janet";
    column4.data = [NSMutableArray arrayWithObjects:@3,
                    @0,
                    @4,
                    @4,
                    @3, nil];
    column4.stack = @"female";
    
    options.chart = chart;
    options.title = title;
    options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
    options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
    options.tooltip = tooltip;
    options.plotOptions = plotoptions;
    options.series = [NSMutableArray arrayWithObjects: column1, column2, column3, column4, nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
