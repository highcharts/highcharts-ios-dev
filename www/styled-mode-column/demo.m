#import <UIKit/UIKit.h>
#import <Highcharts/Highcharts.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HIChartView *chartView = [[HIChartView alloc] initWithFrame:self.view.bounds];
    
    HIOptions *options = [[HIOptions alloc] init];
    
    HIChart *chart = [[HIChart alloc] init];
    chart.type = @"column";
    
    HITitle *title = [[HITitle alloc] init];
    title.text = @"Styling axes and columns";
    
    HIYAxis *yAxis1 = [[HIYAxis alloc] init];
    yAxis1.className = @"highcharts-color-0";
    yAxis1.title = [[HITitle alloc] init];
    yAxis1.title.text = @"Primary axis";
    
    HIYAxis *yAxis2 = [[HIYAxis alloc] init];
    yAxis2.className = @"highcharts-color-1";
    yAxis2.opposite = [[NSNumber alloc] initWithBool:true];
    yAxis2.title = [[HITitle alloc] init];
    yAxis2.title.text = @"Secondary axis";
    
    HIPlotOptions *plotOptions = [[HIPlotOptions alloc] init];
    plotOptions.column = [[HIColumn alloc] init];
    plotOptions.column.borderRadius = @5;
    
    HIColumn *series1 = [[HIColumn alloc] init];
    series1.data = [NSMutableArray arrayWithObjects:@1, @3, @2, @4, nil];
 
    HIColumn *series2 = [[HIColumn alloc] init];
    series2.data = [NSMutableArray arrayWithObjects:@324, @124, @547, @221, nil];
    series2.yAxis = @1;
    
    options.chart = chart;
    options.title = title;
    options.yAxis = [NSMutableArray arrayWithObjects:yAxis1, yAxis2, nil];
    options.plotOptions = plotOptions;
    options.series = [NSMutableArray arrayWithObjects:series1, series2, nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
