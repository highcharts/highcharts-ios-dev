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
    chart.type = @"pyramid";
    chart.marginRight = @100;
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"Sales pyramid";
    title.x = @-50;
    
    HILegend *legend = [[HILegend alloc]init];
    legend.enabled = @true;
    
    HIPlotOptions *plotoptions = [[HIPlotOptions alloc]init];
    plotoptions.pyramid = [[HIPlotOptionsPyramid alloc]init];
    plotoptions.pyramid.dataLabels = [[HIPlotOptionsPyramidDataLabels alloc]init];
    plotoptions.pyramid.dataLabels.enabled = @true;
    plotoptions.pyramid.dataLabels.format = @"<b>{point.name}</b> ({point.y:,.0f})";
    plotoptions.pyramid.dataLabels.color = [[HIColor alloc]initWithName:@"black"];
    plotoptions.pyramid.dataLabels.softConnector = @true;
    
    HIPyramid *pyramind = [[HIPyramid alloc]init];
    pyramind.name = @"Unique users";
    pyramind.data = @[
                      @[
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
                          ]
                      ];
    
    options.chart = chart;
    options.title = title;
    options.legend = legend;
    options.plotOptions = plotoptions;
    options.series = [NSMutableArray arrayWithObjects: pyramind, nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
