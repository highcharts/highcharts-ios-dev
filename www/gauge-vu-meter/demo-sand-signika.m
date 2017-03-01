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
    chart.type = @"gauge";
    chart.plotBorderWidth = @1;
    chart.plotBackgroundColor = [[HIColor alloc]initWithHexValue:@"FFF4C6"];
    chart.height = @200;
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"VU meter";
    
    HIPane *pane = [[HIPane alloc]init];
    pane.startAngle = @-45;
    pane.endAngle = @45;
    pane.background = [[NSMutableArray alloc]init];
    pane.size = @300;
    pane.center = [NSMutableArray arrayWithObjects:@"50%", @"130%", nil];
    
    HITooltip *tooltip = [[HITooltip alloc]init];
    tooltip.enabled = @false;
    
    HIYAxis *yaxis = [[HIYAxis alloc]init];
    yaxis.min = @-20;
    yaxis.max = @6;
    yaxis.minorTickPosition = @"outside";
    yaxis.tickPosition = @"outside";
    yaxis.labels = [[HIYAxisLabels alloc]init];
    yaxis.labels.distance = @20;
    yaxis.labels.rotation = @"auto";
    yaxis.title = [[HIYAxisTitle alloc]init];
    yaxis.title.text = @"VU<br/><span style=\"font-size:8px\">Channel</span>";
    yaxis.title.y = @-40;
    HIYAxisPlotBands *plotband1 = [[HIYAxisPlotBands alloc]init];
    plotband1.from = @0;
    plotband1.to = @6;
    plotband1.color = [[HIColor alloc]initWithHexValue:@"C02316"];
    plotband1.innerRadius = @"100%";
    plotband1.outerRadius = @"105%";
    yaxis.plotBands = [NSMutableArray arrayWithObjects:plotband1, nil];
    
    HIPlotOptions *plotoptions = [[HIPlotOptions alloc]init];
    plotoptions.gauge = [[HIPlotOptionsGauge alloc]init];
    plotoptions.gauge.dataLabels = [[HIPlotOptionsGaugeDataLabels alloc]init];
    plotoptions.gauge.dataLabels.enabled = @false;
    plotoptions.gauge.dial = [[HIPlotOptionsGaugeDial alloc]init];
    plotoptions.gauge.dial.radius = @"100%";
    
    
    HIGauge *gauge = [[HIGauge alloc]init];
    gauge.name = @"Channel";
    gauge.data = [NSMutableArray arrayWithObject:@-8];
    
    options.chart = chart;
    options.title = title;
    options.pane = pane;
    options.tooltip = tooltip;
    options.plotOptions = plotoptions;
    options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
    options.series = [NSMutableArray arrayWithObjects: gauge, nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
