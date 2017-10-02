#import <UIKit/UIKit.h>
#import <Highcharts/Highcharts.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HIGChartView *chartView = [[HIGChartView alloc] initWithFrame:self.view.bounds];

    chartView.theme = @"dark-unica";
    
    NSDate *now = [NSDate date];
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *components = [calendar components:(NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond) fromDate:now];
    
    HIOptions *options = [[HIOptions alloc] init];
    
    HIChart *chart = [[HIChart alloc] init];
    chart.type = @"gauge";
    chart.plotBackgroundColor = [[HIColor alloc] init];
    chart.plotBackgroundImage = @"";
    chart.plotBorderWidth = @0;
    chart.plotShadow = @false;
    chart.height = @200;
    
    HICredits *credits = [[HICredits alloc] init];
    credits.enabled = @false;
    
    HITitle *title = [[HITitle alloc] init];
    title.text = @"The Highcharts clock";
    
    HIPane *pane = [[HIPane alloc] init];
    
    HIPaneBackground *paneBackground = [[HIPaneBackground alloc] init];
    paneBackground.backgroundColor = [[HIColor alloc] init];
    
    pane.background = [NSMutableArray arrayWithObjects:paneBackground, nil];
    
    HIYAxis *yaxis = [[HIYAxis alloc] init];
    yaxis.labels = [[HIYAxisLabels alloc] init];
    yaxis.labels.distance = @-20;
    yaxis.min = @0;
    yaxis.max = @12;
    yaxis.lineWidth = @0;
    yaxis.showFirstLabel = @false;
    
    yaxis.minorTickInterval = @"auto";
    yaxis.minorTickWidth = @1;
    yaxis.minorTickLength = @5;
    yaxis.minorTickPosition = @"inside";
    yaxis.minorGridLineWidth = @0;
    yaxis.minorTickColor = [[HIColor alloc] initWithHexValue:@"666"];
    
    yaxis.tickInterval = @1;
    yaxis.tickWidth = @2;
    yaxis.tickPosition = @"inside";
    yaxis.tickLength = @10;
    yaxis.tickColor = [[HIColor alloc] initWithHexValue:@"666"];
    yaxis.title = [[HIYAxisTitle alloc] init];
    yaxis.title.text = @"Powered by<br/>Highcharts";
    yaxis.title.style = @{ @"color" : @"#BBB", @"fontWeight" : @"normal", @"fontSize" : @"8px", @"lineHeight" : @"10px" };
    yaxis.title.y = @10;
    
    HITooltip *tooltip = [[HITooltip alloc] init];
    tooltip.formatter = @"function () { return this.series.chart.tooltipText; }";
    
    HIGauge *gauge = [[HIGauge alloc] init];
    
    HIGaugeData *data1 = [[HIGaugeData alloc] init];
    data1.id = @"hour";
    data1.y = @([components hour]);
    
    HIGaugeDial *dial1 = [[HIGaugeDial alloc] init];
    dial1.radius = @"60%";
    dial1.baseWidth = @4;
    dial1.baseLength = @"95%";
    dial1.rearLength = @"0";
    
    HIGaugeData *data2 = [[HIGaugeData alloc] init];
    data2.id = @"minute";
    data2.y = @([components minute]);
    
    HIGaugeDial *dial2 = [[HIGaugeDial alloc] init];
    dial2.baseLength = @"95%";
    dial2.rearLength = @"0";
    
    HIGaugeData *data3 = [[HIGaugeData alloc] init];
    data3.id = @"second";
    data3.y = @([components second]);
    
    HIGaugeDial *dial3 = [[HIGaugeDial alloc] init];
    dial3.radius = @"100%";
    dial3.baseWidth = @1;
    dial3.rearLength = @"20%";
    
    gauge.dial = dial1;
    gauge.data = [NSMutableArray arrayWithObjects:data1, data2, nil];
    gauge.animation = @false;
    gauge.dataLabels = [[HIGaugeDataLabels alloc] init];
    gauge.dataLabels.enabled = @false;
    
    options.chart = chart;
    options.credits = credits;
    options.title = title;
    options.pane = pane;
    options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
    options.tooltip = tooltip;
    options.series = [NSMutableArray arrayWithObjects:gauge, nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
