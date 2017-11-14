#import <UIKit/UIKit.h>
#import <Highcharts/Highcharts.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HIChartView *chartView = [[HIChartView alloc] initWithFrame:self.view.bounds];

    chartView.theme = @"sand-signika";

    chartView.plugins = @[ @"histogram-bellcurve" ];
    
    HIOptions *options = [[HIOptions alloc] init];
    
    HITitle *title = [[HITitle alloc] init];
    title.text = @"Highcharts Histogram";
    
    HIXAxis *xaxis1 = [[HIXAxis alloc] init];
    xaxis1.title = [[HITitle alloc] init];
    xaxis1.title.text = @"Data";
    
    HIXAxis *xaxis2 = [[HIXAxis alloc] init];
    xaxis2.title = [[HITitle alloc] init];
    xaxis2.title.text = @"Histogram";
    xaxis2.opposite = [[NSNumber alloc] initWithBool:true];
    
    HIYAxis *yaxis1 = [[HIYAxis alloc] init];
    yaxis1.title = [[HITitle alloc] init];
    yaxis1.title.text = @"Data";
    
    HIYAxis *yaxis2 = [[HIYAxis alloc] init];
    yaxis2.title = [[HITitle alloc] init];
    yaxis2.title.text = @"Histogram";
    yaxis2.opposite = [[NSNumber alloc] initWithBool:true];
    
    HIHistogram *histogram = [[HIHistogram alloc] init];
    histogram.name = @"Histogram";
    histogram.xAxis = @1;
    histogram.yAxis = @1;
    histogram.baseSeries = @"s1";
    histogram.zIndex = @-1;
    
    HIScatter *scatter = [[HIScatter alloc] init];
    scatter.name = @"Data";
    scatter.data = @[@3.5, @3, @3.2, @3.1, @3.6, @3.9, @3.4, @3.4, @2.9, @3.1, @3.7, @3.4, @3, @3, @4, @4.4, @3.9, @3.5, @3.8, @3.8, @3.4, @3.7, @3.6, @3.3, @3.4, @3, @3.4, @3.5, @3.4, @3.2, @3.1, @3.4, @4.1, @4.2, @3.1, @3.2, @3.5, @3.6, @3, @3.4, @3.5, @2.3, @3.2, @3.5, @3.8, @3, @3.8, @3.2, @3.7, @3.3, @3.2, @3.2, @3.1, @2.3, @2.8, @2.8, @3.3, @2.4, @2.9, @2.7, @2, @3, @2.2, @2.9, @2.9, @3.1, @3, @2.7, @2.2, @2.5, @3.2, @2.8, @2.5, @2.8, @2.9, @3, @2.8, @3, @2.9, @2.6, @2.4, @2.4, @2.7, @2.7, @3, @3.4, @3.1, @2.3, @3, @2.5, @2.6, @3, @2.6, @2.3, @2.7, @3, @2.9, @2.9, @2.5, @2.8, @3.3, @2.7, @3, @2.9, @3, @3, @2.5, @2.9, @2.5, @3.6, @3.2, @2.7, @3, @2.5, @2.8, @3.2, @3, @3.8, @2.6, @2.2, @3.2, @2.8, @2.8, @2.7, @3.3, @3.2, @2.8, @3, @2.8, @3, @2.8, @3.8, @2.8, @2.8, @2.6, @3, @3.4, @3.1, @3, @3.1, @3.1, @3.1, @2.7, @3.2, @3.3, @3, @2.5, @3, @3.4, @3];
    scatter.id = @"s1";
    scatter.marker = [[HIMarker alloc] init];
    scatter.marker.radius = @1.5;
    
    options.title = title;
    options.xAxis = [NSMutableArray arrayWithObjects:xaxis1, xaxis2, nil];
    options.yAxis = [NSMutableArray arrayWithObjects:yaxis1, yaxis2, nil];
    options.series = [NSMutableArray arrayWithObjects:histogram, scatter, nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end

