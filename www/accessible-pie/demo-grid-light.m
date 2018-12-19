#import <UIKit/UIKit.h>
#import <Highcharts/Highcharts.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HIChartView *chartView = [[HIChartView alloc] initWithFrame:self.view.bounds];

    chartView.theme = @"grid-light";

    chartView.plugins = @[ @"accessibility", @"pattern-fill" ];

    HIOptions *options = [[HIOptions alloc]init];
    
    HIChart *chart = [[HIChart alloc]init];
    chart.type = @"pie";
    chart.definition = @"Most commonly used desktop screen readers in July 2015 as reported in the Webaim Survey. Shown as percentage of respondents. JAWS is by far the most used screen reader, with 30% of respondents using it. ZoomText and Window-Eyes follow, each with around 20% usage.";
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"Desktop screen readers";
    
    HISubtitle *subtitle = [[HISubtitle alloc]init];
    subtitle.text = @"Click on point to visit official website";
    
    HIPlotOptions *plotoptions = [[HIPlotOptions alloc]init];
    plotoptions.series = [[HISeries alloc] init];
    plotoptions.series.dataLabels = [[HIDataLabels alloc] init];
    plotoptions.series.dataLabels.enabled = [[NSNumber alloc] initWithBool:true];
    plotoptions.series.dataLabels.connectorColor = [[HIColor alloc] initWithHexValue:@"2f7ed8"];
    plotoptions.series.dataLabels.format = @"<b>{point.name}</b>: {point.percentage:.1f} %";
    plotoptions.series.point = [[HIPoint alloc] init];
    plotoptions.series.point.events = [[HIEvents alloc] init];
    plotoptions.series.point.events.click = [[HIFunction alloc] initWithJSFunction:@"function () { window.location.href = this.website; }"];
    plotoptions.series.cursor = @"pointer";
    
    HIPie *pie = [[HIPie alloc] init];
    pie.name = @"Percentage usage";
    pie.borderColor = [[HIColor alloc] initWithHexValue:@"2f7ed8"];
    
    HIData *data1 = [[HIData alloc] init];
    data1.name = @"JAWS";
    data1.y = @30.2;
    data1.color = [[HIColor alloc] initWithName:@"url(#highcharts-default-pattern-0)"];
    data1.definition = @"This is the most used desktop screen reader";
    HIData *data2 = [[HIData alloc] init];
    data2.name = @"ZoomText";
    data2.y = @22.2;
    data2.color = [[HIColor alloc] initWithName:@"url(#highcharts-default-pattern-1)"];
    HIData *data3 = [[HIData alloc] init];
    data3.name = @"Window-Eyes";
    data3.y = @20.7;
    data3.color = [[HIColor alloc] initWithName:@"url(#highcharts-default-pattern-2)"];
    HIData *data4 = [[HIData alloc] init];
    data4.name = @"NVDA";
    data4.y = @14.6;
    data4.color = [[HIColor alloc] initWithName:@"url(#highcharts-default-pattern-4)"];
    HIData *data5 = [[HIData alloc] init];
    data5.name = @"VoiceOver";
    data5.y = @7.6;
    data5.color = [[HIColor alloc] initWithName:@"url(#highcharts-default-pattern-3)"];
    HIData *data6 = [[HIData alloc] init];
    data6.name = @"System Access To Go";
    data6.y = @1.5;
    data6.color = [[HIColor alloc] initWithName:@"url(#highcharts-default-pattern-7)"];
    HIData *data7 = [[HIData alloc] init];
    data7.name = @"ChromeVox";
    data7.y = @0.3;
    data7.color = [[HIColor alloc] initWithName:@"url(#highcharts-default-pattern-6)"];
    HIData *data8 = [[HIData alloc] init];
    data8.name = @"Other";
    data8.y = @2.9;
    data8.color = [[HIColor alloc] initWithName:@"url(#highcharts-default-pattern-5)"];
    
    pie.data = [[NSArray alloc] initWithObjects:data1, data2, data3, data4, data5, data6, data7, data8, nil];
    
    options.chart = chart;
    options.title = title;
    options.subtitle = subtitle;
    options.plotOptions = plotoptions;
    options.series = [NSMutableArray arrayWithObjects:pie, nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
