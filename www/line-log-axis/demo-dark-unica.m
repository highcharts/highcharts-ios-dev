#import <UIKit/UIKit.h>
#import <Highcharts/Highcharts.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HIChartView *chartView = [[HIChartView alloc] initWithFrame:self.view.bounds];

    chartView.theme = @"dark-unica";
    
    HIOptions *options = [[HIOptions alloc]init];
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"Logarithmic axis demo";
    
    HIXAxis *xaxis = [[HIXAxis alloc]init];
    xaxis.tickInterval = @1;
    
    HIYAxis *yaxis = [[HIYAxis alloc]init];
    yaxis.type = @"logarithmic";
    yaxis.minorTickInterval = @0.1;
    
    HITooltip *tooltip = [[HITooltip alloc]init];
    tooltip.headerFormat = @"<b>{series.name}</b><br />";
    tooltip.pointFormat = @"x = {point.x}, y = {point.y}";
    
    HILine *line1 = [[HILine alloc]init];
    line1.pointStart = @1;
    line1.data = [NSMutableArray arrayWithObjects:@1,
                  @2,
                  @4,
                  @8,
                  @16,
                  @32,
                  @64,
                  @128,
                  @256,
                  @512, nil];
    
    options.title = title;
    options.tooltip = tooltip;
    options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
    options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
    options.series = [NSMutableArray arrayWithObjects: line1, nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
