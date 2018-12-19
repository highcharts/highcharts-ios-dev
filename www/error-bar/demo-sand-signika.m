#import <UIKit/UIKit.h>
#import <Highcharts/Highcharts.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HIChartView *chartView = [[HIChartView alloc] initWithFrame:self.view.bounds];

    chartView.theme = @"sand-signika";
    
    HIOptions *options = [[HIOptions alloc]init];
    
    HIChart *chart = [[HIChart alloc]init];
    chart.zoomType = @"xy";
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"Temperature vs Rainfall";
    
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
    
    HIYAxis *yaxis1 = [[HIYAxis alloc]init];
    yaxis1.labels = [[HILabels alloc]init];
    yaxis1.labels.format = @"{value} °C";
    yaxis1.labels.style = [[HICSSObject alloc] init];
    yaxis1.labels.style.color = @"#434348";
    yaxis1.title = [[HITitle alloc]init];
    yaxis1.title.text = @"Temperature";
    yaxis1.title.style = [[HICSSObject alloc] init];
    yaxis1.title.style.color = @"#434348";
    
    HIYAxis *yaxis2 = [[HIYAxis alloc]init];
    yaxis2.labels = [[HILabels alloc]init];
    yaxis2.labels.format = @"{value} mm";
    yaxis2.labels.style = [[HICSSObject alloc] init];
    yaxis2.labels.style.color = @"#7cb5ec";
    yaxis2.title = [[HITitle alloc]init];
    yaxis2.title.text = @"Rainfall";
    yaxis2.title.style = [[HICSSObject alloc] init];
    yaxis2.title.style.color = @"#7cb5ec";
    yaxis2.opposite = [[NSNumber alloc] initWithBool:true];
    
    HITooltip *tooltip = [[HITooltip alloc]init];
    tooltip.shared = [[NSNumber alloc] initWithBool:true];
    
    HIColumn *column = [[HIColumn alloc]init];
    column.name = @"Rainfall";
    column.yAxis = @1;
    column.data = [NSMutableArray arrayWithObjects:@49.9,
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
    column.tooltip = [[HITooltip alloc]init];
    column.tooltip.pointFormat = @"<span style=\"font-weight: bold; color: {series.color}\">{series.name}</span>: <b>{point.y:.1f} mm</b> ";
    
    HIErrorbar *errorbar1 = [[HIErrorbar alloc]init];
    errorbar1.name = @"Rainfall error";
    errorbar1.yAxis = @1;
    errorbar1.data = [NSMutableArray arrayWithObjects:@[
                                                        @48,
                                                        @51
                                                        ],
                      @[
                        @68,
                        @73
                        ],
                      @[
                        @92,
                        @110
                        ],
                      @[
                        @128,
                        @136
                        ],
                      @[
                        @140,
                        @150
                        ],
                      @[
                        @171,
                        @179
                        ],
                      @[
                        @135,
                        @143
                        ],
                      @[
                        @142,
                        @149
                        ],
                      @[
                        @204,
                        @220
                        ],
                      @[
                        @189,
                        @199
                        ],
                      @[
                        @95,
                        @110
                        ],
                      @[
                        @52,
                        @56
                        ]
                      , nil];
    errorbar1.tooltip = [[HITooltip alloc]init];
    errorbar1.tooltip.pointFormat = @"(error range: {point.low}-{point.high} mm)<br/>";
    
    HISpline *spline = [[HISpline alloc]init];
    spline.name = @"Temperature";
    spline.data = [NSMutableArray arrayWithObjects:@7,
                   @6.9,
                   @9.5,
                   @14.5,
                   @18.2,
                   @21.5,
                   @25.2,
                   @26.5,
                   @23.3,
                   @18.3,
                   @13.9,
                   @9.6, nil];
    spline.tooltip = [[HITooltip alloc]init];
    spline.tooltip.pointFormat = @"<span style=\"font-weight: bold; color: {series.color}\">{series.name}</span>: <b>{point.y:.1f}°C</b> ";
    
    
    HIErrorbar *errorbar2 = [[HIErrorbar alloc]init];
    errorbar2.name = @"Temperature error";
    errorbar2.data = [NSMutableArray arrayWithObjects:@[
                                                        @6,
                                                        @8
                                                        ],
                      @[
                        @5.9,
                        @7.6
                        ],
                      @[
                        @9.4,
                        @10.4
                        ],
                      @[
                        @14.1,
                        @15.9
                        ],
                      @[
                        @18,
                        @20.1
                        ],
                      @[
                        @21,
                        @24
                        ],
                      @[
                        @23.2,
                        @25.3
                        ],
                      @[
                        @26.1,
                        @27.8
                        ],
                      @[
                        @23.2,
                        @23.9
                        ],
                      @[
                        @18,
                        @21.1
                        ],
                      @[
                        @12.9,
                        @14
                        ],
                      @[
                        @7.6,
                        @10
                        ]
                      , nil];
    errorbar2.tooltip = [[HITooltip alloc]init];
    errorbar2.tooltip.pointFormat = @"(error range: {point.low}-{point.high}°C)<br/>";
    
    options.chart = chart;
    options.title = title;
    options.xAxis = [NSMutableArray arrayWithObject:xaxis];
    options.yAxis = [NSMutableArray arrayWithObjects:yaxis1, yaxis2, nil];
    options.tooltip = tooltip;
    options.series = [NSMutableArray arrayWithObjects:column, errorbar1, spline, errorbar2, nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
