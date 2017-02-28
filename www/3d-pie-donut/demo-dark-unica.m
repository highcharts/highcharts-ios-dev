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
    chart.type = @"pie";
    chart.options3d = [[HIChartOptions3d alloc]init];
    chart.options3d.enabled = @true;
    chart.options3d.alpha = @45;
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"Contents of Highsoft's weekly fruit delivery";
    
    HISubtitle *subtitle = [[HISubtitle alloc]init];
    subtitle.text = @"3D donut in Highcharts";
    
    HIPlotOptions *plotoptions = [[HIPlotOptions alloc]init];
    plotoptions.pie = [[HIPlotOptionsPie alloc]init];
    plotoptions.pie.innerSize = @100;
    plotoptions.pie.depth = @45;
    
    HIPie *pie = [[HIPie alloc]init];
    pie.name = @"Delivered amount";
    pie.data = [NSMutableArray arrayWithObjects:@[
                                                  @"Bananas",
                                                  @8
                                                  ],
                @[
                  @"Kiwi",
                  @3
                  ],
                @[
                  @"Mixed nuts",
                  @1
                  ],
                @[
                  @"Oranges",
                  @6
                  ],
                @[
                  @"Apples",
                  @8
                  ],
                @[
                  @"Pears",
                  @4
                  ],
                @[
                  @"Clementines",
                  @4
                  ],
                @[
                  @"Reddish (bag)",
                  @1
                  ],
                @[
                  @"Grapes (bunch)",
                  @1
                  ], nil];
    
    options.chart = chart;
    options.title = title;
    options.subtitle = subtitle;
    options.plotOptions = plotoptions;
    options.series = [NSMutableArray arrayWithObjects: pie, nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
