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
    chart.type = @"area";
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"Area chart with negative values";
    
    HIXAxis *xaxis = [[HIXAxis alloc]init];
    xaxis.categories = [NSMutableArray arrayWithObjects:@"Apples",
                        @"Oranges",
                        @"Pears",
                        @"Grapes",
                        @"Bananas", nil];
    
    HICredits *credits = [[HICredits alloc]init];
    credits.enabled = [[NSNumber alloc] initWithBool:false];
    
    HIArea *area1 = [[HIArea alloc]init];
    area1.name = @"John";
    area1.data = [NSMutableArray arrayWithObjects:@5,
                  @3,
                  @4,
                  @7,
                  @2, nil];
    
    HIArea *area2 = [[HIArea alloc]init];
    area2.name = @"Jane";
    area2.data = [NSMutableArray arrayWithObjects:@2,
                  @-2,
                  @-3,
                  @2,
                  @1, nil];
    
    HIArea *area3 = [[HIArea alloc]init];
    area3.name = @"Joe";
    area3.data = [NSMutableArray arrayWithObjects:@3,
                  @4,
                  @4,
                  @-2,
                  @5, nil];
    
    options.chart = chart;
    options.title = title;
    options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
    options.credits = credits;
    options.series = [NSMutableArray arrayWithObjects: area1, area2, area3, nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
