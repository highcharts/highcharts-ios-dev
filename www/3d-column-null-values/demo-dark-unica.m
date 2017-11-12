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
    
    HIChart *chart = [[HIChart alloc]init];
    chart.type = @"column";
    chart.options3d = [[HIOptions3d alloc]init];
    chart.options3d.enabled = [[NSNumber alloc] initWithBool:true];
    chart.options3d.alpha = @10;
    chart.options3d.beta = @25;
    chart.options3d.depth = @70;
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"3D chart with null values";
    
    HISubtitle *subtitle = [[HISubtitle alloc]init];
    subtitle.text = @"Notice the difference between a 0 value and a null point";
    
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
                        @"Oct", nil];
    
    HIYAxis *yaxis = [[HIYAxis alloc]init];
    yaxis.title = [[HITitle alloc]init];
    yaxis.title.text = @"";
    
    HIPlotOptions *plotoptions = [[HIPlotOptions alloc]init];
    plotoptions.column = [[HIColumn alloc]init];
    plotoptions.column.depth = @25;
    
    HIColumn *column = [[HIColumn alloc]init];
    column.name = @"Sales";
    column.data = [NSMutableArray arrayWithObjects:@2,
                   @3,
                   [NSNull null],
                   @4,
                   @0,
                   @5,
                   @1,
                   @4,
                   @6,
                   @3, nil];
    
    options.chart = chart;
    options.title = title;
    options.subtitle = subtitle;
    options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
    options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
    options.plotOptions = plotoptions;
    options.series = [NSMutableArray arrayWithObjects: column, nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
