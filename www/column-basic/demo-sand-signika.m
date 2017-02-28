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
    
    HIChart *chart = [[HIChart alloc]init];
    chart.type = @"column";
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"Monthly Average Rainfall";
    
    HISubtitle *subtitle = [[HISubtitle alloc]init];
    subtitle.text = @"Source: WorldClimate.com";
    
    HIXAxis *xaxis = [[HIXAxis alloc]init];
    xaxis.categories = [NSMutableArray arrayWithObjects:@"Jan",
                        @"Feb",
                        @"Mar",
                        @"Apr",
                        @"May",
                        @"Jun",
                        @"Jul",
                        @"Aug",
                        @"Sep",
                        @"Oct",
                        @"Nov",
                        @"Dec", nil];
    xaxis.crosshair = [[HIXAxisCrosshair alloc]init];
    
    HIYAxis *yaxis = [[HIYAxis alloc]init];
    yaxis.min = @0;
    yaxis.title = [[HIYAxisTitle alloc]init];
    yaxis.title.text = @"Rainfall (mm)";
    
    HITooltip *tooltip = [[HITooltip alloc]init];
    tooltip.headerFormat = @"<span style=\"font-size:10px\">{point.key}</span><table>";
    tooltip.pointFormat = @"<tr><td style=\"color:{series.color};padding:0\">{series.name}: </td><td style=\"padding:0\"><b>{point.y:.1f} mm</b></td></tr>";
    tooltip.footerFormat = @"</table>";
    tooltip.shared = @true;
    tooltip.useHTML = @true;
    
    HIPlotOptions *plotOptions = [[HIPlotOptions alloc]init];
    plotOptions.column = [[HIPlotOptionsColumn alloc]init];
    plotOptions.column.pointPadding = @0.2;
    plotOptions.column.borderWidth = @0;
    
    HIColumn *column1 = [[HIColumn alloc]init];
    column1.name = @"Tokyo";
    column1.data = [NSMutableArray arrayWithObjects:@49.9,
                    @71.5,
                    @106.4,
                    @129.2,
                    @144,
                    @176,
                    @135.6,
                    @148.5,
                    @216.4,
                    @194.1,
                    @95.6,
                    @54.4, nil];
    
    HIColumn *column2 = [[HIColumn alloc]init];
    column2.name = @"New York";
    column2.data = [NSMutableArray arrayWithObjects:@83.6,
                    @78.8,
                    @98.5,
                    @93.4,
                    @106,
                    @84.5,
                    @105,
                    @104.3,
                    @91.2,
                    @83.5,
                    @106.6,
                    @92.3, nil];
    
    HIColumn *column3 = [[HIColumn alloc]init];
    column3.name = @"London";
    column3.data = [NSMutableArray arrayWithObjects:@48.9,
                    @38.8,
                    @39.3,
                    @41.4,
                    @47,
                    @48.3,
                    @59,
                    @59.6,
                    @52.4,
                    @65.2,
                    @59.3,
                    @51.2, nil];
    
    HIColumn *column4 = [[HIColumn alloc]init];
    column4.name = @"Berlin";
    column4.data = [NSMutableArray arrayWithObjects:@42.4,
                    @33.2,
                    @34.5,
                    @39.7,
                    @52.6,
                    @75.5,
                    @57.4,
                    @60.4,
                    @47.6,
                    @39.1,
                    @46.8,
                    @51.1, nil];
    
    HIOptions *options = [[HIOptions alloc]init];
    options.chart = chart;
    options.title = title;
    options.subtitle = subtitle;
    options.xAxis = [NSMutableArray arrayWithObject:xaxis];
    options.yAxis = [NSMutableArray arrayWithObject:yaxis];
    options.tooltip = tooltip;
    options.plotOptions = plotOptions;
    options.series = [NSMutableArray arrayWithObjects:column1, column2, column3, column4, nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
