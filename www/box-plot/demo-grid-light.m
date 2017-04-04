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
    chart.type = @"boxplot";
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"Highcharts Box Plot Example";
    
    HILegend *legend = [[HILegend alloc]init];
    legend.enabled = @false;
    
    HIXAxis *xaxis = [[HIXAxis alloc]init];
    xaxis.categories = [NSMutableArray arrayWithObjects:@"1",
                        @"2",
                        @"3",
                        @"4",
                        @"5", nil];
    xaxis.title = [[HIXAxisTitle alloc]init];
    xaxis.title.text = @"Experiment No.";
    
    HIYAxis *yaxis = [[HIYAxis alloc]init];
    yaxis.title = [[HIYAxisTitle alloc]init];
    yaxis.title.text = @"Observations";
    HIYAxisPlotLines *plotlines = [[HIYAxisPlotLines alloc]init];
    plotlines.value = @932;
    plotlines.color = [[HIColor alloc]initWithName:@"red"];
    plotlines.width = @1;
    plotlines.label = [[HIYAxisPlotLinesLabel alloc]init];
    plotlines.label.text = @"Theoretical mean: 932";
    plotlines.label.align = @"center";
    plotlines.label.style = @{@"color": @"gray"};
    yaxis.plotLines = [NSMutableArray arrayWithObject:plotlines];
    
    HIBoxplot *series1 = [[HIBoxplot alloc]init];
    series1.name = @"Observations";
    series1.data = [NSMutableArray arrayWithObjects:@[
                                                      @760,
                                                      @801,
                                                      @848,
                                                      @895,
                                                      @965
                                                      ],
                    @[
                      @733,
                      @853,
                      @939,
                      @980,
                      @1080
                      ],
                    @[
                      @714,
                      @762,
                      @817,
                      @870,
                      @918
                      ],
                    @[
                      @724,
                      @802,
                      @806,
                      @871,
                      @950
                      ],
                    @[
                      @834,
                      @836,
                      @864,
                      @882,
                      @910
                      ], nil];
    series1.tooltip = [[HIBoxplotTooltip alloc]init];
    series1.tooltip.headerFormat = @"<em>Experiment No {point.key}</em><br/>";
    
    HIScatter *series2 = [[HIScatter alloc]init];
    series2.name = @"Outliner";
    series2.color = [[HIColor alloc]initWithHexValue:@"7cb5ec"];
    series2.data = [NSMutableArray arrayWithObjects:@[
                                                      @0,
                                                      @644
                                                      ],
                    @[
                      @4,
                      @718
                      ],
                    @[
                      @4,
                      @951
                      ],
                    @[
                      @4,
                      @969
                      ], nil];
    series2.marker = [[HIScatterMarker alloc]init];
    series2.marker.fillColor = [[HIColor alloc]initWithName:@"white"];
    series2.marker.lineWidth = @1;
    series2.marker.lineColor = [[HIColor alloc]initWithHexValue:@"7cb5ec"];
    series2.tooltip = [[HIScatterTooltip alloc]init];
    series2.tooltip.pointFormat = @"Observation: {point.y}";
    
    options.chart = chart;
    options.title = title;
    options.legend = legend;
    options.xAxis = [NSMutableArray arrayWithObject:xaxis];
    options.yAxis = [NSMutableArray arrayWithObject:yaxis];
    options.series = [NSMutableArray arrayWithObjects:series1, series2, nil];
    
    chartView.options = options;
    [self.view addSubview:chartView];
}

@end
