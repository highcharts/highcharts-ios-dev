#import <UIKit/UIKit.h>
#import <Highcharts/Highcharts.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HIChartView *chartView = [[HIChartView alloc] initWithFrame:self.view.bounds];

    chartView.theme = @"grid-light";

    chartView.plugins = @[ @"accessibility" ];

    HIOptions *options = [[HIOptions alloc]init];
    
    HIChart *chart = [[HIChart alloc]init];
    chart.type = @"spline";
    chart.definition = @"Most commonly used desktop screen readers from January 2009 to July 2015 as reported in the Webaim Survey. JAWS remains the most used screen reader, but is steadily declining. ZoomText and WindowEyes are both displaying large growth from 2014 to 2015.";
    
    HILegend *legend = [[HILegend alloc] init];
    legend.symbolWidth = @40;
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"Desktop screen readers from 2009 to 2015";
    
    HISubtitle *subtitle = [[HISubtitle alloc]init];
    subtitle.text = @"Click on point to visit official website";
    
    HIYAxis *yaxis = [[HIYAxis alloc]init];
    yaxis.title = [[HITitle alloc]init];
    yaxis.title.text = @"Percentage usage";
    
    HIXAxis *xaxis = [[HIXAxis alloc]init];
    xaxis.title = [[HITitle alloc]init];
    xaxis.title.text = @"Time";
    xaxis.definition = @"Time from January 2009 to July 2015";
    xaxis.categories = [NSArray arrayWithObjects:@"January 2009", @"December 2010", @"May 2012", @"January 2014", @"July 2015", nil];
    
    HITooltip *tooltip = [[HITooltip alloc]init];
    tooltip.split = [[NSNumber alloc] initWithBool:true];
    
    HIPlotOptions *plotoptions = [[HIPlotOptions alloc]init];
    plotoptions.series = [[HISeries alloc] init];
    plotoptions.series.point = [[HIPoint alloc] init];
    plotoptions.series.point.events = [[HIEvents alloc] init];
    plotoptions.series.point.events.click = [[HIFunction alloc] initWithJSFunction:@"function () { window.location.href = this.series.options.website; }"];
    plotoptions.series.cursor = @"pointer";
    
    HISpline *spline1 = [[HISpline alloc] init];
    spline1.name = @"JAWS";
    spline1.data = [NSArray arrayWithObjects:@74, @69.6, @63.7, @63.9, @43.7, nil];
    
    HISpline *spline2 = [[HISpline alloc] init];
    spline2.name = @"NVDA";
    spline2.data = [NSArray arrayWithObjects:@8, @34.8, @43.0, @51.2, @41.4, nil];
    spline2.dashStyle = @"Dot";
    
    HISpline *spline3 = [[HISpline alloc] init];
    spline3.name = @"VoiceOver";
    spline3.data = [NSArray arrayWithObjects:@6, @20.2, @30.7, @36.8, @30.9, nil];
    spline3.dashStyle = @"ShortDot";
    spline3.color = [[HIColor alloc] initWithHexValue:@"77a1e5"];
    
    HISpline *spline4 = [[HISpline alloc] init];
    spline4.name = @"Window-Eyes";
    spline4.data = [NSArray arrayWithObjects:@23, @19.0, @20.7, @13.9, @29.6, nil];
    spline4.dashStyle = @"Dash";
    spline4.color = [[HIColor alloc] initWithHexValue:@"2f7ed8"];
    
    HISpline *spline5 = [[HISpline alloc] init];
    spline5.name = @"ZoomText";
    spline5.data = [NSArray arrayWithObjects:@0, @6.1, @6.8, @5.3, @27.5, nil];
    spline5.dashStyle = @"ShortDashDot";
    spline5.color = [[HIColor alloc] initWithHexValue:@"c42525"];
    
    HISpline *spline6 = [[HISpline alloc] init];
    spline6.name = @"System Access To Go";
    spline6.data = [NSArray arrayWithObjects:@0, @16.2, @22.1, @26.2, @6.9, nil];
    spline6.dashStyle = @"ShortDash";
    spline6.color = [[HIColor alloc] initWithHexValue:@"0d233a"];
    
    HISpline *spline7 = [[HISpline alloc] init];
    spline7.name = @"ChromeVox";
    spline7.data = [NSArray arrayWithObjects:@0, @0, @2.8, @4.8, @2.8, nil];
    spline6.dashStyle = @"DotDash";
    spline6.color = [[HIColor alloc] initWithHexValue:@"1aadce"];
    
    HISpline *spline8 = [[HISpline alloc] init];
    spline8.name = @"Other";
    spline8.data = [NSArray arrayWithObjects:@0, @7.4, @5.9, @9.3, @6.5, nil];
    spline8.dashStyle = @"LongDash";
    spline8.color = [[HIColor alloc] initWithHexValue:@"77a1e5"];
    
    options.chart = chart;
    options.legend = legend;
    options.title = title;
    options.subtitle = subtitle;
    options.yAxis = [NSArray arrayWithObject:yaxis];
    options.xAxis = [NSArray arrayWithObject:xaxis];
    options.tooltip = tooltip;
    options.plotOptions = plotoptions;
    options.series = [NSMutableArray arrayWithObjects:spline1, spline2, spline3, spline4, spline5, spline6, spline7, spline8, nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
