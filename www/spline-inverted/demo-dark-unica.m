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
    chart.type = @"spline";
    chart.inverted = @true;
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"Atmosphere Temperature by Altitude";
    
    HISubtitle *subtitle = [[HISubtitle alloc]init];
    subtitle.text = @"According to the Standard Atmosphere Model";
    
    HIXAxis *xaxis = [[HIXAxis alloc]init];
    xaxis.reversed = @false;
    xaxis.title = [[HIXAxisTitle alloc]init];
    xaxis.title.text = @"Altitude";
    xaxis.labels = [[HIXAxisLabels alloc]init];
    xaxis.maxPadding = @0.05;
    xaxis.showLastLabel = @true;
    
    HIYAxis *yaxis = [[HIYAxis alloc]init];
    yaxis.title = [[HIYAxisTitle alloc]init];
    yaxis.title.text = @"Temperature";
    yaxis.labels = [[HIYAxisLabels alloc]init];
    yaxis.lineWidth = @2;
    
    HILegend *legend = [[HILegend alloc]init];
    legend.enabled = @false;
    
    HITooltip *tooltip = [[HITooltip alloc]init];
    tooltip.headerFormat = @"<b>{series.name}</b><br/>";
    tooltip.pointFormat = @"{point.x} km: {point.y}°C";
    
    HIPlotOptions *plotoptions = [[HIPlotOptions alloc]init];
    plotoptions.spline = [[HIPlotOptionsSpline alloc]init];
    plotoptions.spline.marker = [[HIPlotOptionsSplineMarker alloc]init];
    plotoptions.spline.marker.enabled = @false;
    
    HISpline *series = [[HISpline alloc]init];
    series.name = @"Temperature";
    series.data = [NSMutableArray arrayWithObjects:@[
                                                     @0,
                                                     @15
                                                     ],
                   @[
                     @10,
                     @-50
                     ],
                   @[
                     @20,
                     @-56.5
                     ],
                   @[
                     @30,
                     @-46.5
                     ],
                   @[
                     @40,
                     @-22.1
                     ],
                   @[
                     @50,
                     @-2.5
                     ],
                   @[
                     @60,
                     @-27.7
                     ],
                   @[
                     @70,
                     @-55.7
                     ],
                   @[
                     @80,
                     @-76.5
                     ], nil];
    
    options.chart = chart;
    options.title = title;
    options.subtitle = subtitle;
    options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
    options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
    options.legend = legend;
    options.tooltip = tooltip;
    options.plotOptions = plotoptions;
    options.series = [NSMutableArray arrayWithObjects:series, nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
