#import <UIKit/UIKit.h>
#import <Highcharts/Highcharts.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HIChartView *chartView = [[HIChartView alloc] initWithFrame:self.view.bounds];

    chartView.theme = @"sand-signika";

    chartView.plugins = @[ @"xrange" ];
    
    HIOptions *options = [[HIOptions alloc] init];
    
    HIChart *chart = [[HIChart alloc] init];
    chart.type = @"xrange";
    
    HITitle *title = [[HITitle alloc] init];
    title.text = @"Highcharts X-range";
    
    HIXAxis *xaxis = [[HIXAxis alloc] init];
    xaxis.type = @"datetime";
    
    HIYAxis *yaxis = [[HIYAxis alloc] init];
    yaxis.title = [[HITitle alloc] init];
    yaxis.title.text = @"";
    yaxis.categories = @[@"Prototyping", @"Development", @"Testing"];
    yaxis.reversed = [[NSNumber alloc] initWithBool:true];
    
    HIXrange *xrange = [[HIXrange alloc] init];
    xrange.name = @"Project 1";
    xrange.pointPadding = @0;
    xrange.groupZPadding = @0;
    xrange.borderColor = [[HIColor alloc] initWithName:@"gray"];
    xrange.pointWidth = @20;
    xrange.data = @[
                    @{
                        @"x": @1416528000000,
                        @"x2": @1417478400000,
                        @"y": @0,
                        @"partialFill": @0.25
                    }, @{
                        @"x": @1417478400000,
                        @"x2": @1417737600000,
                        @"y": @1
                    }, @{
                        @"x": @1417996800000,
                        @"x2": @1418083200000,
                        @"y": @2
                    }, @{
                        @"x": @1418083200000,
                        @"x2": @1418947200000,
                        @"y": @1
                    }, @{
                        @"x": @1418169600000,
                        @"x2": @1419292800000,
                        @"y": @2
                    }
                ];
    xrange.dataLabels = [[HIDataLabels alloc] init];
    xrange.dataLabels.enabled = [[NSNumber alloc] initWithBool:true];
    
    options.chart = chart;
    options.title = title;
    options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
    options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
    options.series = [NSMutableArray arrayWithObjects:xrange, nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
