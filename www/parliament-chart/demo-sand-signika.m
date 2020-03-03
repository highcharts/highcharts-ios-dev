#import <UIKit/UIKit.h>
#import <Highcharts/Highcharts.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  	[super viewDidLoad];
    
   	HIChartView *chartView = [[HIChartView alloc] initWithFrame:self.view.bounds];

   	chartView.theme = @"sand-signika";

    chartView.plugins = @[@"item-series"];

    HIOptions *options = [[HIOptions alloc] init];

    HIChart *chart = [[HIChart alloc]init];
    chart.type = @"item";
    options.chart = chart;

    HITitle *title = [[HITitle alloc]init];
    title.text = @"Highcharts item chart";
    options.title = title;

    HISubtitle *subtitle = [[HISubtitle alloc]init];
    subtitle.text = @"Parliament visualization";
    options.subtitle = subtitle;

    HILegend *legend = [[HILegend alloc]init];
    legend.labelFormat = @"{name} <span style=\"opacity: 0.4\">{y}</span>";
    options.legend = legend;

    HIItem *series = [[HIItem alloc] init];
    series.name = @"Representatives";
    series.keys = @[@"name", @"y", @"color", @"label"];
    series.data = @[
        @[@"The Left", @69, @"#BE3075", @"DIE LINKE"],
        @[@"Social Democratic Party", @153, @"#EB001F", @"SPD"],
        @[@"Alliance 90/The Greens", @67, @"#64A12D", @"GRÜNE"],
        @[@"Free Democratic Party", @80, @"#FFED00", @"FDP"],
        @[@"Christian Democratic Union", @200, @"#000000", @"CDU"],
        @[@"Christian Social Union in Bavaria", @46, @"#008AC5", @"CSU"],
        @[@"Alternative for Germany", @94, @"#009EE0", @"AfD"]
        ];
    HIDataLabels *datalabels = [[HIDataLabels alloc] init];
    datalabels.enabled = [[NSNumber alloc] initWithBool:true];
    datalabels.format = @"{point.label}";
    series.dataLabels = [NSArray arrayWithObjects:datalabels, nil];
    series.center = @[@"50%", @"88%"];
    series.size = @"170%";
    series.startAngle = @-100;
    series.endAngle = @100;

    options.series = [NSArray arrayWithObjects:series, nil];

    chartView.options = options;

    [self.view addSubview:chartView];
}

@end
