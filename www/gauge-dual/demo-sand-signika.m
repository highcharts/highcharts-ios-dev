
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
    chart.alignTicks = @false;
    chart.plotBorderWidth = @0;
    chart.plotShadow = @false;
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"Speedometer with dual axes";
    
    HIPane *pane = [[HIPane alloc]init];
    pane.startAngle = @-150;
    pane.endAngle = @150;
    
    HIYAxis *yaxis1 = [[HIYAxis alloc]init];
    yaxis1.min = @0;
    yaxis1.max = @200;
    yaxis1.lineColor = [[HIColor alloc]initWithHexValue:@"339"];
    yaxis1.tickColor = [[HIColor alloc]initWithHexValue:@"339"];
    yaxis1.minorTickColor = [[HIColor alloc]initWithHexValue:@"339"];
    yaxis1.offset = @-25;
    yaxis1.lineWidth = @2;
    yaxis1.labels = [[HIYAxisLabels alloc]init];
    yaxis1.labels.distance = @-20;
    yaxis1.labels.rotation = @"auto";
    yaxis1.tickLength = @5;
    yaxis1.minorTickLength = @5;
    yaxis1.endOnTick = @false;
    
    HIYAxis *yaxis2 = [[HIYAxis alloc]init];
    yaxis2.min = @0;
    yaxis2.max = @124;
    yaxis2.tickPosition = @"outside";
    yaxis2.lineColor = [[HIColor alloc]initWithHexValue:@"933"];
    yaxis2.lineWidth = @2;
    yaxis2.minorTickPosition = @"outside";
    yaxis2.tickColor = [[HIColor alloc]initWithHexValue:@"933"];
    yaxis2.minorTickColor = [[HIColor alloc]initWithHexValue:@"933"];
    yaxis2.offset = @-20;
    yaxis2.labels = [[HIYAxisLabels alloc]init];
    yaxis2.labels.distance = @12;
    yaxis2.labels.rotation = @"auto";
    yaxis2.tickLength = @5;
    yaxis2.minorTickLength = @5;
    yaxis2.endOnTick = @false;
    
    HIGauge *gauge = [[HIGauge alloc]init];
    gauge.name = @"Speed";
    gauge.tooltip = [[HIGaugeTooltip alloc]init];
    gauge.tooltip.valueSuffix = @" km/h";
    gauge.data = [NSMutableArray arrayWithObjects:@80, nil];
    
    options.chart = chart;
    options.title = title;
    options.pane = pane;
    options.yAxis = [NSMutableArray arrayWithObjects:yaxis1, yaxis2, nil];
    options.series = [NSMutableArray arrayWithObjects: gauge, nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
