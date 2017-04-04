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
    chart.type = @"drilldown";
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"Browser market shares. January, 2015 to May, 2015";
    
    HISubtitle *subtitle = [[HISubtitle alloc]init];
    subtitle.text = @"Click the slices to view versions. Source: netmarketshare.com.";
    
    HITooltip *tooltip = [[HITooltip alloc]init];
    tooltip.headerFormat = @"<span style=\"font-size:11px\">{series.name}</span><br>";
    tooltip.pointFormat = @"<span style=\"color:{point.color}\">{point.name}</span>: <b>{point.y:.2f}%</b> of total<br/>";
    
    HIPlotOptions *plotoptions = [[HIPlotOptions alloc]init];
    plotoptions.series = [[HIPlotOptionsSeries alloc]init];
    plotoptions.series.dataLabels = [[HIPlotOptionsSeriesDataLabels alloc]init];
    plotoptions.series.dataLabels.enabled = @true;
    plotoptions.series.dataLabels.format = @"{point.name}: {point.y:.1f}%";
    
    HIPie *pie = [[HIPie alloc]init];
    pie.name = @"Brands";
    pie.data = [NSMutableArray arrayWithObjects:@{
                                                  @"name": @"Microsoft Internet Explorer",
                                                  @"y": @56.33,
                                                  @"drilldown": @"Microsoft Internet Explorer"
                                                  },
                @{
                  @"name": @"Chrome",
                  @"y": @24.03,
                  @"drilldown": @"Chrome"
                  },
                @{
                  @"name": @"Firefox",
                  @"y": @10.38,
                  @"drilldown": @"Firefox"
                  },
                @{
                  @"name": @"Safari",
                  @"y": @4.77,
                  @"drilldown": @"Safari"
                  },
                @{
                  @"name": @"Opera",
                  @"y": @0.91,
                  @"drilldown": @"Opera"
                  },
                @{
                  @"name": @"Proprietary or Undetectable",
                  @"y": @0.2,
                  @"drilldown": [NSNull null]
                  }
                , nil];
    
    HIDrilldown *drilldown = [[HIDrilldown alloc]init];
    HIPie *dpie1 = [[HIPie alloc]init];
    dpie1.name = @"Microsoft Internet Explorer";
    dpie1.id = @"Microsoft Internet Explorer";
    dpie1.data = [NSMutableArray arrayWithObjects:@[
                                                    @"v11.0",
                                                    @24.13
                                                    ],
                  @[
                    @"v8.0",
                    @17.2
                    ],
                  @[
                    @"v9.0",
                    @8.11
                    ],
                  @[
                    @"v10.0",
                    @5.33
                    ],
                  @[
                    @"v6.0",
                    @1.06
                    ],
                  @[
                    @"v7.0",
                    @0.5
                    ]
                  , nil];
    
    HIPie *dpie2 = [[HIPie alloc]init];
    dpie2.name = @"Chrome";
    dpie2.id = @"Chrome";
    dpie2.data = [NSMutableArray arrayWithObjects:@[
                                                    @"v40.0",
                                                    @5
                                                    ],
                  @[
                    @"v41.0",
                    @4.32
                    ],
                  @[
                    @"v42.0",
                    @3.68
                    ],
                  @[
                    @"v39.0",
                    @2.96
                    ],
                  @[
                    @"v36.0",
                    @2.53
                    ],
                  @[
                    @"v43.0",
                    @1.45
                    ],
                  @[
                    @"v31.0",
                    @1.24
                    ],
                  @[
                    @"v35.0",
                    @0.85
                    ],
                  @[
                    @"v38.0",
                    @0.6
                    ],
                  @[
                    @"v32.0",
                    @0.55
                    ],
                  @[
                    @"v37.0",
                    @0.38
                    ],
                  @[
                    @"v33.0",
                    @0.19
                    ],
                  @[
                    @"v34.0",
                    @0.14
                    ],
                  @[
                    @"v30.0",
                    @0.14
                    ]
                  , nil];
    
    HIPie *dpie3 = [[HIPie alloc]init];
    dpie3.name = @"Firefox";
    dpie3.id = @"Firefox";
    dpie3.data = [NSMutableArray arrayWithObjects:@[
                                                    @"v35",
                                                    @2.76
                                                    ],
                  @[
                    @"v36",
                    @2.32
                    ],
                  @[
                    @"v37",
                    @2.31
                    ],
                  @[
                    @"v34",
                    @1.27
                    ],
                  @[
                    @"v38",
                    @1.02
                    ],
                  @[
                    @"v31",
                    @0.33
                    ],
                  @[
                    @"v33",
                    @0.22
                    ],
                  @[
                    @"v32",
                    @0.15
                    ]
                  , nil];
    
    HIPie *dpie4 = [[HIPie alloc]init];
    dpie4.name = @"Safari";
    dpie4.id = @"Safari";
    dpie4.data = [NSMutableArray arrayWithObjects:@[
                                                    @"v8.0",
                                                    @2.56
                                                    ],
                  @[
                    @"v7.1",
                    @0.77
                    ],
                  @[
                    @"v5.1",
                    @0.42
                    ],
                  @[
                    @"v5.0",
                    @0.3
                    ],
                  @[
                    @"v6.1",
                    @0.29
                    ],
                  @[
                    @"v7.0",
                    @0.26
                    ],
                  @[
                    @"v6.2",
                    @0.17
                    ], nil];
    
    HIPie *dpie5 = [[HIPie alloc]init];
    dpie5.name = @"Opera";
    dpie5.id = @"Opera";
    dpie5.data = [NSMutableArray arrayWithObjects:@[
                                                    @"v12.x",
                                                    @0.34
                                                    ],
                  @[
                    @"v28",
                    @0.24
                    ],
                  @[
                    @"v27",
                    @0.17
                    ],
                  @[
                    @"v29",
                    @0.16
                    ], nil];
    
    drilldown.series = [NSMutableArray arrayWithObjects:dpie1, dpie2, dpie3, dpie4, dpie5, nil];
    
    options.chart = chart;
    options.title = title;
    options.subtitle = subtitle;
    options.tooltip = tooltip;
    options.plotOptions = plotoptions;
    options.drilldown = drilldown;
    options.series = [NSMutableArray arrayWithObjects: pie, nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
