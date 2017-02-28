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
    
    HIOptions *options = [[HIOptions alloc]init];
    
    HIChart *chart = [[HIChart alloc]init];
    chart.type = @"funnel";
    chart.marginRight = @100;
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"Sales funnel";
    title.x = @-50;
    
    HIPlotOptions *plotOptions = [[HIPlotOptions alloc]init];
    plotOptions.funnel = [[HIPlotOptionsFunnel alloc]init];
    plotOptions.funnel.dataLabels = [[HIPlotOptionsFunnelDataLabels alloc]init];
    plotOptions.funnel.dataLabels.enabled = @true;
    plotOptions.funnel.dataLabels.format = @"<b>{point.name}</b> ({point.y:,.0f})";
    plotOptions.funnel.dataLabels.color = [[HIColor alloc]initWithHexValue:@"FFFFFF"];
    plotOptions.funnel.dataLabels.softConnector = @true;
    plotOptions.funnel.neckWidth = @"30%";
    plotOptions.funnel.neckHeight = @"25%";
    
    HILegend *legend = [[HILegend alloc]init];
    legend.enabled = @false;
    
    HIFunnel *series = [[HIFunnel alloc]init];
    series.name = @"Unique users";
    series.data = [NSMutableArray arrayWithObjects:@[
                                                     @"Website visits",
                                                     @15654
                                                     ],
                   @[
                     @"Downloads",
                     @4064
                     ],
                   @[
                     @"Requested price list",
                     @1987
                     ],
                   @[
                     @"Invoice sent",
                     @976
                     ],
                   @[
                     @"Finalized",
                     @846
                     ], nil];
    options.chart = chart;
    options.title = title;
    options.plotOptions = plotOptions;
    options.legend = legend;
    options.series = [NSMutableArray arrayWithObject:series];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
