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
    
    HIOptions *options = [[HIOptions alloc]init];
    
    HIChart *chart = [[HIChart alloc]init];
    chart.type = @"pie";
    chart.options3d = [[HIChartOptions3d alloc]init];
    chart.options3d.enabled = @true;
    chart.options3d.alpha = @45;
    chart.options3d.beta = @0;
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"Browser market shares at a specific website, 2014";
    
    HITooltip *tooltip = [[HITooltip alloc]init];
    tooltip.pointFormat = @"{series.name}: <b>{point.percentage:.1f}%</b>";
    
    HIPlotOptions *plotoptions = [[HIPlotOptions alloc]init];
    plotoptions.pie = [[HIPlotOptionsPie alloc]init];
    plotoptions.pie.allowPointSelect = @true;
    plotoptions.pie.cursor = @"pointer";
    plotoptions.pie.depth = @35;
    plotoptions.pie.dataLabels = [[HIPlotOptionsPieDataLabels alloc]init];
    plotoptions.pie.dataLabels.enabled = @true;
    plotoptions.pie.dataLabels.format = @"{point.name}";
    
    HIPie *pie = [[HIPie alloc]init];
    pie.name = @"Browser share";
    pie.data = [NSMutableArray arrayWithObjects:@[
                                                  @"Firefox",
                                                  @45
                                                  ],
                @[
                  @"IE",
                  @26.8
                  ],
                @{
                  @"name": @"Chrome",
                  @"y": @12.8,
                  @"sliced": @true,
                  @"selected": @true
                  },
                @[
                  @"Safari",
                  @8.5
                  ],
                @[
                  @"Opera",
                  @6.2
                  ],
                @[
                  @"Others",
                  @0.7
                  ], nil];
    
    options.chart = chart;
    options.title = title;
    options.tooltip = tooltip;
    options.plotOptions = plotoptions;
    options.series = [NSMutableArray arrayWithObjects: pie, nil];
    
    chartView.options = options
    
    [self.view addSubview:chartView];
}

@end
