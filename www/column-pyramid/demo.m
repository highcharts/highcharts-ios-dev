#import <UIKit/UIKit.h>
#import <Highcharts/Highcharts.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HIChartView *chartView = [[HIChartView alloc] initWithFrame:self.view.bounds];

    HIOptions *options = [[HIOptions alloc]init];
    
    HIChart *chart = [[HIChart alloc]init];
    chart.type = @"columnpyramid";
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"The 5 highest pyramids in the World";
    
    NSArray *colors = [[NSArray alloc] initWithObjects:@"#C79D6D", @"#B5927B", @"#CE9B84", @"#B7A58C", @"#C7A58C", nil];
    
    HIXAxis *xaxis = [[HIXAxis alloc] init];
    xaxis.crosshair = [[HICrosshair alloc] init];
    xaxis.labels = [[HILabels alloc] init];
    xaxis.labels.style = [[HICSSObject alloc] init];
    xaxis.labels.style.fontSize = @"14px";
    xaxis.type = @"category";
    
    HIYAxis *yaxis = [[HIYAxis alloc] init];
    yaxis.min = @0;
    yaxis.title = [[HITitle alloc] init];
    yaxis.title.text = @"Height (m)";
    
    HITooltip *tooltip = [[HITooltip alloc] init];
    tooltip.valueSuffix = @" m";
   
    HIColumnpyramid *columnpyramid = [[HIColumnpyramid alloc] init];
    columnpyramid.name = @"Height";
    columnpyramid.colorByPoint = [[NSNumber alloc] initWithBool:true];
    columnpyramid.data = [[NSMutableArray alloc] initWithObjects:@[
                                                                @"Pyramid of Khufu",
                                                                @138.8
                                                                ],
                          @[
                            @"Pyramid of Khafre",
                            @136.4
                            ],
                          @[
                            @"Red Pyramid",
                            @104
                            ],
                          @[
                            @"Bent Pyramid",
                            @101.1
                            ],
                          @[
                            @"Pyramid of the Sun",
                            @75
                            ],
                          nil];
    columnpyramid.showInLegend = [[NSNumber alloc] initWithBool:false];

    options.chart = chart;
    options.title = title;
    options.colors = colors;
    options.xAxis = [[NSArray alloc] initWithObjects:xaxis, nil];
    options.yAxis = [[NSArray alloc] initWithObjects:yaxis, nil];
    options.tooltip = tooltip;
    options.series = [NSMutableArray arrayWithObjects:columnpyramid, nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
