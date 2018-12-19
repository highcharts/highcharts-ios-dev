#import <UIKit/UIKit.h>
#import <Highcharts/Highcharts.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HIChartView *chartView = [[HIChartView alloc] initWithFrame:self.view.bounds];
    
    chartView.theme = @"sand-signika";

    NSDate *now = [NSDate date];
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *components = [calendar components:(NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond) fromDate:now];
    
    HIOptions *options = [[HIOptions alloc] init];
    
    HIChart *chart = [[HIChart alloc] init];
    chart.type = @"gauge";
    chart.plotBackgroundColor = [[HIColor alloc] init];
    chart.plotBackgroundImage = @"";
    chart.plotBorderWidth = @0;
    chart.plotShadow = [[NSNumber alloc] initWithBool:false];
    chart.height = @200;
    
    HICredits *credits = [[HICredits alloc] init];
    credits.enabled = [[NSNumber alloc] initWithBool:false];
    
    HITitle *title = [[HITitle alloc] init];
    title.text = @"The Highcharts clock";
    
    HIPane *pane = [[HIPane alloc] init];
    
    HIBackground *paneBackground = [[HIBackground alloc] init];
    paneBackground.backgroundColor = [[HIColor alloc] init];
    
    pane.background = [NSMutableArray arrayWithObjects:paneBackground, nil];
    
    HIYAxis *yaxis = [[HIYAxis alloc] init];
    yaxis.labels = [[HILabels alloc] init];
    yaxis.labels.distance = @-20;
    yaxis.min = @0;
    yaxis.max = @12;
    yaxis.lineWidth = @0;
    yaxis.showFirstLabel = [[NSNumber alloc] initWithBool:false];
    
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
    yaxis.title = [[HITitle alloc] init];
    yaxis.title.text = @"Powered by<br/>Highcharts";
    yaxis.title.style = [[HICSSObject alloc] init];
    yaxis.title.style.color = @"#BBB";
    yaxis.title.style.fontWeight = @"normal";
    yaxis.title.style.fontSize = @"8px";
    yaxis.title.y = @10;
    
    HITooltip *tooltip = [[HITooltip alloc] init];
    tooltip.formatter = [[HIFunction alloc] initWithJSFunction:@"function () { return this.series.chart.tooltipText; }"];
    
    HIGauge *gauge = [[HIGauge alloc] init];
    
    HIData *data1 = [[HIData alloc] init];
    data1.id = @"hour";
    data1.y = @([components hour]);
    
    HIDial *dial1 = [[HIDial alloc] init];
    dial1.radius = @"60%";
    dial1.baseWidth = @4;
    dial1.baseLength = @"95%";
    dial1.rearLength = @"0";
    
    HIData *data2 = [[HIData alloc] init];
    data2.id = @"minute";
    data2.y = @([components minute]);
    
    HIDial *dial2 = [[HIDial alloc] init];
    dial2.baseLength = @"95%";
    dial2.rearLength = @"0";
    
    HIData *data3 = [[HIData alloc] init];
    data3.id = @"second";
    data3.y = @([components second]);
    
    HIDial *dial3 = [[HIDial alloc] init];
    dial3.radius = @"100%";
    dial3.baseWidth = @1;
    dial3.rearLength = @"20%";
    
    gauge.dial = dial1;
    gauge.data = [NSMutableArray arrayWithObjects:data1, data2, nil];
    gauge.animation = [[HIAnimation alloc] init];
    gauge.animation.duration = @0;
    gauge.dataLabels = [[HIDataLabels alloc] init];
    gauge.dataLabels.enabled = [[NSNumber alloc] initWithBool:false];
    
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
