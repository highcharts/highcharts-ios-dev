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
    chart.type = @"waterfall";
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"Waterfall";
    
    HIXAxis *xAxis = [[HIXAxis alloc]init];
    xAxis.type = @"category";
    
    HIYAxis *yAxis = [[HIYAxis alloc]init];
    yAxis.title = [[HIYAxisTitle alloc]init];
    yAxis.title.text = @"USD";
    yAxis.labels = [[HIYAxisLabels alloc]init];
    yAxis.labels.format = @"{value}k";
    
    HILegend *legend = [[HILegend alloc]init];
    legend.enabled = @false;
    
    HITooltip *tooltip = [[HITooltip alloc]init];
    tooltip.pointFormat = @"<b>${point.y:,.2f}</b> USD";
    
    HIWaterfall *series = [[HIWaterfall alloc]init];
    series.upColor = [[HIColor alloc]initWithHexValue:@"90ed7d"];
    series.color = [[HIColor alloc]initWithHexValue:@"f7a35c"];
    
    //You can add objects by hand or creating data objects - one presented below:
    
    HIWaterfallData *data = [[HIWaterfallData alloc]init];
    data.name = @"Positive Balance";
    data.isIntermediateSum = @true;
    data.color = [[HIColor alloc]initWithHexValue:@"434348"];
    
    series.data = [NSMutableArray arrayWithObjects:@{
                                                     @"name": @"Start",
                                                     @"y": @120
                                                     },
                   @{
                     @"name": @"Product Revenue",
                     @"y": @569
                     },
                   @{
                     @"name": @"Service Revenue",
                     @"y": @231
                     },
                   
                   data,
                   
                   @{
                     @"name": @"Fixed Costs",
                     @"y": @-342
                     },
                   @{
                     @"name": @"Variable Costs",
                     @"y": @-233
                     },
                   @{
                     @"name": @"Balance",
                     @"isSum": @true,
                     @"color": @"#434348"
                     }, nil];
    
    series.dataLabels = [[HIWaterfallDataLabels alloc]init];
    series.dataLabels.enabled = @true;
    series.dataLabels.format = @"{point.y}k";
    series.dataLabels.style = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"bold",@"fontWeight",  nil];
    series.pointPadding = @0;
    
    options.chart = chart;
    options.title = title;
    options.xAxis = [NSMutableArray arrayWithObject:xAxis];
    options.yAxis = [NSMutableArray arrayWithObject:yAxis];
    options.legend = legend;
    options.tooltip = tooltip;
    options.series = [NSMutableArray arrayWithObject:series];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
