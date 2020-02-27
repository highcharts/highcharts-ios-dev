#import <UIKit/UIKit.h>
#import <Highcharts/Highcharts.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HIChartView *chartView = [[HIChartView alloc] initWithFrame:self.view.bounds];

    chartView.theme = @"dark-unica";

    chartView.plugins = @[@"dumbbell"];

    HIOptions *options = [[HIOptions alloc] init];

    HIChart *chart = [[HIChart alloc]init];
    chart.type = @"dumbbell";
    chart.inverted = [[NSNumber alloc] initWithBool:true];
    options.chart = chart;

    HILegend *legend = [[HILegend alloc]init];
    legend.enabled =[[NSNumber alloc] initWithBool:false];
    options.legend = legend;

    HITitle *title = [[HITitle alloc]init];
    title.text = @"Change in Life Expectancy";
    options.title = title;

    HISubtitle *subtitle = [[HISubtitle alloc]init];
    subtitle.text = @"1960 vs 2018";
    options.subtitle = subtitle;

    HITooltip *tooltip = [[HITooltip alloc] init];
    tooltip.shared = [[NSNumber alloc] initWithBool:true];
    options.tooltip = tooltip;

    HIXAxis *xAxis = [[HIXAxis alloc]init];
    xAxis.type = @"category";
    options.xAxis = [NSArray arrayWithObjects:xAxis, nil];

    HIYAxis *yAxis = [[HIYAxis alloc]init];
    yAxis.title = [[HITitle alloc] init];
    yAxis.title.text = @"Life Expectancy (years)";
    options.yAxis = [NSArray arrayWithObjects:yAxis, nil];

    HIDumbbell *series = [[HIDumbbell alloc] init];
    series.name = @"Life expectancy change";

    HIData *data1 = [[HIData alloc] init];
    data1.name = @"Austria";
    data1.low = @69;
    data1.high = @82;

    HIData *data2 = [[HIData alloc] init];
    data2.name = @"Belgium";
    data2.low = @70;
    data2.high = @81;

    HIData *data3 = [[HIData alloc] init];
    data3.name = @"Bulgaria";
    data3.low = @69;
    data3.high = @75;

    HIData *data4 = [[HIData alloc] init];
    data4.name = @"Croatia";
    data4.low = @65;
    data4.high = @78;

    HIData *data5 = [[HIData alloc] init];
    data5.name = @"Cyprus";
    data5.low = @70;
    data5.high = @81;

    HIData *data6 = [[HIData alloc] init];
    data6.name = @"Czech Republic";
    data6.low = @70;
    data6.high = @79;

    HIData *data7 = [[HIData alloc] init];
    data7.name = @"Denmark";
    data7.low = @72;
    data7.high = @81;

    HIData *data8 = [[HIData alloc] init];
    data8.name = @"Estonia";
    data8.low = @68;
    data8.high = @78;

    HIData *data9 = [[HIData alloc] init];
    data9.name = @"Finland";
    data9.low = @69;
    data9.high = @81;

    HIData *data10 = [[HIData alloc] init];
    data10.name = @"France";
    data10.low = @70;
    data10.high = @83;

    HIData *data11 = [[HIData alloc] init];
    data11.name = @"Greece";
    data11.low = @68;
    data11.high = @81;

    HIData *data12 = [[HIData alloc] init];
    data12.name = @"Spain";
    data12.low = @69;
    data12.high = @83;

    HIData *data13 = [[HIData alloc] init];
    data13.name = @"Netherlands";
    data13.low = @73;
    data13.high = @82;

    HIData *data14 = [[HIData alloc] init];
    data14.name = @"Ireland";
    data14.low = @70;
    data14.high = @82;

    HIData *data15 = [[HIData alloc] init];
    data15.name = @"Lithuania";
    data15.low = @70;
    data15.high = @75;

    HIData *data16 = [[HIData alloc] init];
    data16.name = @"Luxembourg";
    data16.low = @68;
    data16.high = @83;

    HIData *data17 = [[HIData alloc] init];
    data17.name = @"Latvia";
    data17.low = @70;
    data17.high = @75;

    HIData *data18 = [[HIData alloc] init];
    data18.name = @"Malta";
    data18.low = @69;
    data18.high = @82;

    HIData *data19 = [[HIData alloc] init];
    data19.name = @"Germany";
    data19.low = @69;
    data19.high = @81;

    HIData *data20 = [[HIData alloc] init];
    data20.name = @"Poland";
    data20.low = @68;
    data20.high = @78;

    HIData *data21 = [[HIData alloc] init];
    data21.name = @"Portugal";
    data21.low = @63;
    data21.high = @81;

    HIData *data22 = [[HIData alloc] init];
    data22.name = @"Romania";
    data22.low = @66;
    data22.high = @75;

    HIData *data23 = [[HIData alloc] init];
    data23.name = @"Slovakia";
    data23.low = @70;
    data23.high = @77;

    HIData *data24 = [[HIData alloc] init];
    data24.name = @"Slovenia";
    data24.low = @69;
    data24.high = @81;

    HIData *data25 = [[HIData alloc] init];
    data25.name = @"Sweden";
    data25.low = @73;
    data25.high = @82;

    HIData *data26 = [[HIData alloc] init];
    data26.name = @"Hungary";
    data26.low = @68;
    data26.high = @76;

    HIData *data27 = [[HIData alloc] init];
    data27.name = @"Italy";
    data27.low = @69;
    data27.high = @83;

    HIData *data28 = [[HIData alloc] init];
    data28.name = @"UK";
    data28.low = @71;
    data28.high = @81;

    series.data = [NSArray arrayWithObjects:data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, data24, data5, data26, data27, data28, nil];
    options.series = [NSArray arrayWithObjects:series, nil];

    chartView.options = options;

    [self.view addSubview:chartView];
}

@end
