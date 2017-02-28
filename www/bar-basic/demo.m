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
    
    HIChart *chart = [[HIChart alloc]init];
    chart.type = @"bar";
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"Historic World Population by Region";
    
    HISubtitle *subtitle = [[HISubtitle alloc]init];
    subtitle.text = @"Source: <a href=\"https://en.wikipedia.org/wiki/World_population\">Wikipedia.org</a>";
    
    HIXAxis * xaxis = [[HIXAxis alloc]init];
    xaxis.categories = [NSMutableArray arrayWithObjects:@"Africa",
                        @"America",
                        @"Asia",
                        @"Europe",
                        @"Oceania", nil];
    
    HIYAxis *yaxis = [[HIYAxis alloc]init];
    yaxis.min = @0;
    yaxis.title = [[HIYAxisTitle alloc]init];
    yaxis.title.text = @"Population (millions)";
    yaxis.title.align = @"high";
    yaxis.labels = [[HIYAxisLabels alloc]init];
    yaxis.labels.overflow = @"justify";
    
    HITooltip *tooltip = [[HITooltip alloc]init];
    tooltip.valueSuffix = @" millions";
    
    HIPlotOptions *plotOptions = [[HIPlotOptions alloc]init];
    plotOptions.bar = [[HIPlotOptionsBar alloc]init];
    plotOptions.bar.dataLabels = [[HIPlotOptionsBarDataLabels alloc]init];
    plotOptions.bar.dataLabels.enabled = @true;
    
    HILegend *legend = [[HILegend alloc]init];
    legend.layout = @"vertical";
    legend.align = @"right";
    legend.verticalAlign = @"top";
    legend.x = @-40;
    legend.y = @80;
    legend.floating = @true;
    legend.borderWidth = @1;
    legend.backgroundColor = [[HIColor alloc]initWithHexValue:@"FFFFFF"];
    legend.shadow = @true;
    
    HICredits *credits = [[HICredits alloc]init];
    credits.enabled = @false;
    
    HIBar *bar1 = [[HIBar alloc]init];
    bar1.name = @"Year 1800";
    bar1.data = [NSMutableArray arrayWithObjects:@107,
                 @31,
                 @635,
                 @203,
                 @2, nil];
    
    HIBar *bar2 = [[HIBar alloc]init];
    bar2.name = @"Year 1900";
    bar2.data = [NSMutableArray arrayWithObjects:@133,
                 @156,
                 @947,
                 @408,
                 @6, nil];
    
    HIBar *bar3 = [[HIBar alloc]init];
    bar3.name = @"Year 2012";
    bar3.data = [NSMutableArray arrayWithObjects:@1052,
                 @954,
                 @4250,
                 @740,
                 @38, nil];
    
    HIOptions *options = [[HIOptions alloc]init];
    options.chart = chart;
    options.title = title;
    options.subtitle = subtitle;
    options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
    options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
    options.tooltip = tooltip;
    options.plotOptions = plotOptions;
    options.legend = legend;
    options.credits = credits;
    options.series = [NSMutableArray arrayWithObjects:bar1, bar2, bar3, nil];
    
    chartView.options = options;
    
    
    [self.view addSubview:chartView];
}

@end
