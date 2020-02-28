#import <UIKit/UIKit.h>
#import <Highcharts/Highcharts.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HIChartView *chartView = [[HIChartView alloc] initWithFrame:self.view.bounds];

    chartView.theme = @"grid-light";

    chartView.plugins = @[@"dumbbell", @"lollipop"];

    HIOptions *options = [[HIOptions alloc] init];

    HIChart *chart = [[HIChart alloc]init];
    chart.type = @"lollipop";
    options.chart = chart;

    HILegend *legend = [[HILegend alloc]init];
    legend.enabled =[[NSNumber alloc] initWithBool:false];
    options.legend = legend;

    HITitle *title = [[HITitle alloc]init];
    title.text = @"Top 10 Countries by Population";
    options.title = title;

    HISubtitle *subtitle = [[HISubtitle alloc]init];
    subtitle.text = @"2018";
    options.subtitle = subtitle;

    HITooltip *tooltip = [[HITooltip alloc] init];
    tooltip.shared = [[NSNumber alloc] initWithBool:true];
    options.tooltip = tooltip;

    HIXAxis *xAxis = [[HIXAxis alloc]init];
    xAxis.type = @"category";
    options.xAxis = [NSArray arrayWithObjects:xAxis, nil];

    HIYAxis *yAxis = [[HIYAxis alloc]init];
    yAxis.title = [[HITitle alloc] init];
    yAxis.title.text = @"Population";
    options.yAxis = [NSArray arrayWithObjects:yAxis, nil];

    HILollipop *series = [[HILollipop alloc] init];
    series.name = @"Population";

    HIData *data1 = [[HIData alloc] init];
    data1.name = @"China";
    data1.low = @1427647786;

    HIData *data2 = [[HIData alloc] init];
    data2.name = @"India";
    data2.low = @1352642280;

    HIData *data3 = [[HIData alloc] init];
    data3.name = @"United States";
    data3.low = @327096265;

    HIData *data4 = [[HIData alloc] init];
    data4.name = @"Indonesia";
    data4.low = @267670543;

    HIData *data5 = [[HIData alloc] init];
    data5.name = @"Pakistan";
    data5.low = @212228286;

    HIData *data6 = [[HIData alloc] init];
    data6.name = @"Brazil";
    data6.low = @209469323;

    HIData *data7 = [[HIData alloc] init];
    data7.name = @"Nigeria";
    data7.low = @195874683;

    HIData *data8 = [[HIData alloc] init];
    data8.name = @"Bangladesh";
    data8.low = @161376708;

    HIData *data9 = [[HIData alloc] init];
    data9.name = @"Russia";
    data9.low = @145734038;

    HIData *data10 = [[HIData alloc] init];
    data10.name = @"Mexico";
    data10.low = @126190788;

    series.data = [NSArray arrayWithObjects:data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, nil];

    options.series = [NSArray arrayWithObjects:series, nil];

    chartView.options = options;

    [self.view addSubview:chartView];
}

@end
