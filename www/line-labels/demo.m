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
    chart.type = @"line";
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"Monthly Average Temperature";
    
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
    
    HIYAxis *yaxis = [[HIYAxis alloc]init];
    yaxis.title = [[HIYAxisTitle alloc]init];
    yaxis.title.text = @"Temperature (°C)";
    
    HIPlotOptions *plotoptions = [[HIPlotOptions alloc]init];
    plotoptions.line = [[HIPlotOptionsLine alloc]init];
    plotoptions.line.dataLabels = [[HIPlotOptionsLineDataLabels alloc]init];
    plotoptions.line.dataLabels.enabled = @true;
    
    HILine *line1 = [[HILine alloc]init];
    line1.name = @"Tokyo";
    line1.data = [NSMutableArray arrayWithObjects:@7,
                  @6.9,
                  @9.5,
                  @14.5,
                  @18.4,
                  @21.5,
                  @25.2,
                  @26.5,
                  @23.3,
                  @18.3,
                  @13.9,
                  @9.6, nil];
    
    HILine *line2 = [[HILine alloc]init];
    line2.name = @"London";
    line2.data = [NSMutableArray arrayWithObjects:@3.9,
                  @4.2,
                  @5.7,
                  @8.5,
                  @11.9,
                  @15.2,
                  @17,
                  @16.6,
                  @14.2,
                  @10.3,
                  @6.6,
                  @4.8, nil];
    
    options.chart = chart;
    options.title = title;
    options.subtitle = subtitle;
    options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
    options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
    options.plotOptions = plotoptions;
    options.series = [NSMutableArray arrayWithObjects: line1, line2, nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
