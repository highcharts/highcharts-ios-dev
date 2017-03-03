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
    chart.type = @"heatmap";
    chart.marginTop = @40;
    chart.marginBottom = @80;
    chart.plotBorderWidth = @1;
    options.chart = chart;
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"Sales per employee per weekday";
    options.title = title;
    
    HIXAxis *xaxis = [[HIXAxis alloc]init];
    xaxis.categories = @[
                         @"Alexander",
                         @"Marie",
                         @"Maximilian",
                         @"Sophia",
                         @"Lukas",
                         @"Maria",
                         @"Leon",
                         @"Anna",
                         @"Tim",
                         @"Laura"
                         ];
    options.xAxis = @[xaxis];
    
    HIYAxis *yaxis = [[HIYAxis alloc]init];
    yaxis.categories = @[
                         @"Monday",
                         @"Tuesday",
                         @"Wednesday",
                         @"Thursday",
                         @"Friday"
                         ];
    yaxis.title = [[HIYAxisTitle alloc]init];
    yaxis.title.text = @"";
    options.yAxis = @[yaxis];
    
    HILegend *legend = [[HILegend alloc]init];
    legend.align = @"right";
    legend.layout = @"vertical";
    legend.margin = @0;
    legend.verticalAlign = @"top";
    legend.y = @25;
    legend.symbolHeight = @280;
    options.legend = legend;
    
    HITooltip *tooltip = [[HITooltip alloc]init];
    tooltip.enabled = @false;
    options.tooltip = tooltip;
    
    HIHeatmap *heatmap = [[HIHeatmap alloc]init];
    heatmap.name = @"Sales per employee";
    heatmap.borderWidth = @1;
    heatmap.dataLabels = [[HIHeatmapDataLabels alloc]init];
    heatmap.dataLabels.enabled = @true;
    heatmap.dataLabels.color = [[HIColor alloc]initWithHexValue:@"000000"];
    heatmap.data = @[
                     @[
                         @0,
                         @0,
                         @10
                         ],
                     @[
                         @0,
                         @1,
                         @19
                         ],
                     @[
                         @0,
                         @2,
                         @8
                         ],
                     @[
                         @0,
                         @3,
                         @24
                         ],
                     @[
                         @0,
                         @4,
                         @67
                         ],
                     @[
                         @1,
                         @0,
                         @92
                         ],
                     @[
                         @1,
                         @1,
                         @58
                         ],
                     @[
                         @1,
                         @2,
                         @78
                         ],
                     @[
                         @1,
                         @3,
                         @117
                         ],
                     @[
                         @1,
                         @4,
                         @48
                         ],
                     @[
                         @2,
                         @0,
                         @35
                         ],
                     @[
                         @2,
                         @1,
                         @15
                         ],
                     @[
                         @2,
                         @2,
                         @123
                         ],
                     @[
                         @2,
                         @3,
                         @64
                         ],
                     @[
                         @2,
                         @4,
                         @52
                         ],
                     @[
                         @3,
                         @0,
                         @72
                         ],
                     @[
                         @3,
                         @1,
                         @132
                         ],
                     @[
                         @3,
                         @2,
                         @114
                         ],
                     @[
                         @3,
                         @3,
                         @19
                         ],
                     @[
                         @3,
                         @4,
                         @16
                         ],
                     @[
                         @4,
                         @0,
                         @38
                         ],
                     @[
                         @4,
                         @1,
                         @5
                         ],
                     @[
                         @4,
                         @2,
                         @8
                         ],
                     @[
                         @4,
                         @3,
                         @117
                         ],
                     @[
                         @4,
                         @4,
                         @115
                         ],
                     @[
                         @5,
                         @0,
                         @88
                         ],
                     @[
                         @5,
                         @1,
                         @32
                         ],
                     @[
                         @5,
                         @2,
                         @12
                         ],
                     @[
                         @5,
                         @3,
                         @6
                         ],
                     @[
                         @5,
                         @4,
                         @120
                         ],
                     @[
                         @6,
                         @0,
                         @13
                         ],
                     @[
                         @6,
                         @1,
                         @44
                         ],
                     @[
                         @6,
                         @2,
                         @88
                         ],
                     @[
                         @6,
                         @3,
                         @98
                         ],
                     @[
                         @6,
                         @4,
                         @96
                         ],
                     @[
                         @7,
                         @0,
                         @31
                         ],
                     @[
                         @7,
                         @1,
                         @1
                         ],
                     @[
                         @7,
                         @2,
                         @82
                         ],
                     @[
                         @7,
                         @3,
                         @32
                         ],
                     @[
                         @7,
                         @4,
                         @30
                         ],
                     @[
                         @8,
                         @0,
                         @85
                         ],
                     @[
                         @8,
                         @1,
                         @97
                         ],
                     @[
                         @8,
                         @2,
                         @123
                         ],
                     @[
                         @8,
                         @3,
                         @64
                         ],
                     @[
                         @8,
                         @4,
                         @84
                         ],
                     @[
                         @9,
                         @0,
                         @47
                         ],
                     @[
                         @9,
                         @1,
                         @114
                         ],
                     @[
                         @9,
                         @2,
                         @31
                         ],
                     @[
                         @9,
                         @3,
                         @48
                         ],
                     @[
                         @9,
                         @4,
                         @91
                         ]
                     ];
    options.series = @[heatmap];
    
    options.additionalOptions = @{@"colorAxis": @{
                                          @"min": @0,
                                          @"minColor": @"#FFFFFF",
                                          @"maxColor": @"#7cb5ec"
                                          }};
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end

