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

    chartView.theme = @"grid-light";
    
    HIOptions *options = [[HIOptions alloc]init];
    
    HIChart *chart = [[HIChart alloc]init];
    chart.plotBackgroundColor = [[HIColor alloc]init];
    chart.plotBorderWidth = [[NSNumber alloc]init];
    chart.plotShadow = @false;
    chart.type = @"pie";
    
    NSArray *colors = @[
                        [[HIColor alloc]initWithRadialGradient:@{
                                                                 @"cx": @0.5,
                                                                 @"cy": @0.3,
                                                                 @"r": @0.7
                                                                 }stops:@[
                                                                          @[
                                                                              @0,
                                                                              @"#7cb5ec"
                                                                              ],
                                                                          @[
                                                                              @1,
                                                                              @"rgb(48,105,160)"
                                                                              ]
                                                                          ]],
                        [[HIColor alloc]initWithRadialGradient:@{
                                                                 @"cx": @0.5,
                                                                 @"cy": @0.3,
                                                                 @"r": @0.7
                                                                 } stops:@[
                                                                           @[
                                                                               @0,
                                                                               @"#434348"
                                                                               ],
                                                                           @[
                                                                               @1,
                                                                               @"rgb(0,0,0)"
                                                                               ]
                                                                           ]],
                        [[HIColor alloc]initWithRadialGradient:@{
                                                                 @"cx": @0.5,
                                                                 @"cy": @0.3,
                                                                 @"r": @0.7
                                                                 } stops:@[
                                                                           @[
                                                                               @0,
                                                                               @"#90ed7d"
                                                                               ],
                                                                           @[
                                                                               @1,
                                                                               @"rgb(68,161,49)"
                                                                               ]
                                                                           ]],
                        [[HIColor alloc]initWithRadialGradient:@{
                                                                 @"cx": @0.5,
                                                                 @"cy": @0.3,
                                                                 @"r": @0.7
                                                                 } stops:@[
                                                                           @[
                                                                               @0,
                                                                               @"#f7a35c"
                                                                               ],
                                                                           @[
                                                                               @1,
                                                                               @"rgb(171,87,16)"
                                                                               ]
                                                                           ]],
                        [[HIColor alloc]initWithRadialGradient:@{
                                                                 @"cx": @0.5,
                                                                 @"cy": @0.3,
                                                                 @"r": @0.7
                                                                 } stops:@[
                                                                           @[
                                                                               @0,
                                                                               @"#8085e9"
                                                                               ],
                                                                           @[
                                                                               @1,
                                                                               @"rgb(52,57,157)"
                                                                               ]
                                                                           ]],
                        [[HIColor alloc]initWithRadialGradient:@{
                                                                 @"cx": @0.5,
                                                                 @"cy": @0.3,
                                                                 @"r": @0.7
                                                                 } stops:@[
                                                                           @[
                                                                               @0,
                                                                               @"#f15c80"
                                                                               ],
                                                                           @[
                                                                               @1,
                                                                               @"rgb(165,16,52)"
                                                                               ]
                                                                           ]],
                        [[HIColor alloc]initWithRadialGradient:@{
                                                                 @"cx": @0.5,
                                                                 @"cy": @0.3,
                                                                 @"r": @0.7
                                                                 } stops:@[
                                                                           @[
                                                                               @0,
                                                                               @"#e4d354"
                                                                               ],
                                                                           @[
                                                                               @1,
                                                                               @"rgb(152,135,8)"
                                                                               ]
                                                                           ]],
                        [[HIColor alloc]initWithRadialGradient:@{
                                                                 @"cx": @0.5,
                                                                 @"cy": @0.3,
                                                                 @"r": @0.7
                                                                 } stops:@[
                                                                           @[
                                                                               @0,
                                                                               @"#2b908f"
                                                                               ],
                                                                           @[
                                                                               @1,
                                                                               @"rgb(0,68,67)"
                                                                               ]
                                                                           ]],
                        [[HIColor alloc]initWithRadialGradient:@{
                                                                 @"cx": @0.5,
                                                                 @"cy": @0.3,
                                                                 @"r": @0.7
                                                                 } stops:@[
                                                                           @[
                                                                               @0,
                                                                               @"#f45b5b"
                                                                               ],
                                                                           @[
                                                                               @1,
                                                                               @"rgb(168,15,15)"
                                                                               ]
                                                                           ]],
                        [[HIColor alloc]initWithRadialGradient:@{
                                                                 @"cx": @0.5,
                                                                 @"cy": @0.3,
                                                                 @"r": @0.7
                                                                 } stops:@[
                                                                           @[
                                                                               @0,
                                                                               @"#91e8e1"
                                                                               ],
                                                                           @[
                                                                               @1,
                                                                               @"rgb(69,156,149)"
                                                                               ]
                                                                           ]]
                        ];
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"Browser market shares. January, 2015 to May, 2015";
    
    HITooltip *tooltip = [[HITooltip alloc]init];
    tooltip.pointFormat = @"{series.name}: <b>{point.percentage:.1f}%</b>";
    
    HIPlotOptions *plotoptions = [[HIPlotOptions alloc]init];
    plotoptions.pie = [[HIPlotOptionsPie alloc]init];
    plotoptions.pie.allowPointSelect = @true;
    plotoptions.pie.cursor = @"pointer";
    plotoptions.pie.dataLabels = [[HIPlotOptionsPieDataLabels alloc]init];
    plotoptions.pie.dataLabels.enabled = @true;
    plotoptions.pie.dataLabels.format = @"<b>{point.name}</b>: {point.percentage:.1f} %";
    plotoptions.pie.dataLabels.style = @{@"color": @"black"};
    plotoptions.pie.dataLabels.connectorColor = @"silver";
    
    HIPie *pie = [[HIPie alloc]init];
    pie.name = @"Brands";
    pie.data = @[
                 @{
                     @"name": @"Microsoft Internet Explorer",
                     @"y": @56.33
                     },
                 @{
                     @"name": @"Chrome",
                     @"y": @24.03,
                     @"sliced": @true,
                     @"selected": @true
                     },
                 @{
                     @"name": @"Firefox",
                     @"y": @10.38
                     },
                 @{
                     @"name": @"Safari",
                     @"y": @4.77
                     },
                 @{
                     @"name": @"Opera",
                     @"y": @0.91
                     },
                 @{
                     @"name": @"Proprietary or Undetectable",
                     @"y": @0.2
                     }
                 ];
    
    
    options.chart = chart;
    options.colors = colors;
    options.title = title;
    options.tooltip = tooltip;
    options.plotOptions = plotoptions;
    options.series = [NSMutableArray arrayWithObjects:pie,  nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
