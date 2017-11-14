#import <UIKit/UIKit.h>
#import <Highcharts/Highcharts.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HIChartView *chartView = [[HIChartView alloc] initWithFrame:self.view.bounds];

    chartView.theme = @"grid-light";
    
    HIOptions *options = [[HIOptions alloc] init];
    
    HIChart *chart = [[HIChart alloc] init];
    chart.type = @"item";

    HITitle *title = [[HITitle alloc] init];
    title.text = @"Highcharts item chart";
    
    HIXAxis *xAxis = [[HIXAxis alloc] init];
    xAxis.categories = @[@"Jan", @"Feb", @"Mar", @"Apr", @"May", @"Jun", @"Jul", @"Aug", @"Sep", @"Oct", @"Nov", @"Dec"];
    
    HIYAxis *yAxis = [[HIYAxis alloc] init];
    yAxis.gridLineWidth = @0;
    yAxis.labels = [[HILabels alloc] init];
    yAxis.labels.enabled = [[NSNumber alloc] initWithBool:false];
    yAxis.title = [[HITitle alloc] init];
    
    HIPlotOptions *plotOptions = [[HIPlotOptions alloc] init];
    plotOptions.series = [[HISeries alloc] init];
    plotOptions.series.stacking = @"normal";
    
    HISeries *series1 = [[HISeries alloc] init];
    series1.name = @"Items bought";
    series1.data = [NSMutableArray arrayWithObjects:@5, @3, @4, nil];
    series1.color = [[HIColor alloc] initWithName:@"green"];
    
    HISeries *series2 = [[HISeries alloc] init];
    series2.name = @"Items sold";
    series2.data = [NSMutableArray arrayWithObjects:@0, @2, @1, nil];
    series2.color = [[HIColor alloc] initWithName:@"red"];
    options.series = [NSMutableArray arrayWithObjects:series1, series2, nil];
    
    options.chart = chart;
    options.title = title;
    options.xAxis = [NSMutableArray arrayWithObjects:xAxis, nil];
    options.yAxis = [NSMutableArray arrayWithObjects:yAxis, nil];
    options.plotOptions = plotOptions;
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
