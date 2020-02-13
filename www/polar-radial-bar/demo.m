#import <UIKit/UIKit.h>
#import <Highcharts/Highcharts.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HIChartView *chartView = [[HIChartView alloc] initWithFrame:self.view.bounds];

    HIOptions *options = [[HIOptions alloc]init];
    options.colors = [NSArray arrayWithObjects:@"#FFD700", @"#C0C0C0", @"#CD7F32", nil];

    HIChart *chart = [[HIChart alloc]init];
    chart.type = @"column";
    chart.inverted = [[NSNumber alloc] initWithBool:true];
    chart.polar = [[NSNumber alloc] initWithBool:true];
    options.chart = chart;

    HITitle *title = [[HITitle alloc]init];
    title.text = @"Winter Olympic medals per existing country (TOP 10)";
    options.title = title;

    HITooltip *tooltip = [[HITooltip alloc] init];
    tooltip.outside = [[NSNumber alloc] initWithBool:true];
    options.tooltip = tooltip;

    HIPane *pane = [[HIPane alloc] init];
    pane.size = @"85%";
    pane.endAngle = @270;
    options.pane = pane;

    HIXAxis *xAxis = [[HIXAxis alloc] init];
    xAxis.tickInterval = @1;
    xAxis.labels = [[HILabels alloc] init];
    xAxis.labels.align = @"right";
    xAxis.labels.useHTML = [[NSNumber alloc] initWithBool:true];
    xAxis.labels.allowOverlap = [[NSNumber alloc] initWithBool:true];
    xAxis.labels.step = @1;
    xAxis.labels.y = @4;
    xAxis.labels.style = [[HICSSObject alloc] init];
    xAxis.labels.style.fontSize = @"12px";
    xAxis.lineWidth = @0;
    xAxis.categories = [NSArray arrayWithObjects:
                        @"Norway <span class=\"f16\"><span id=\"flag\" class=\"flag no\"></span></span>",
                        @"United States <span class=\"f16\"><span id=\"flag\" class=\"flag us\"></span></span>",
                        @"Germany <span class=\"f16\"><span id=\"flag\" class=\"flag de\"></span></span>",
                        @"Canada <span class=\"f16\"><span id=\"flag\" class=\"flag ca\"></span></span>",
                        @"Austria <span class=\"f16\"><span id=\"flag\" class=\"flag at\"></span></span>",
                        @"Sweden <span class=\"f16\"><span id=\"flag\" class=\"flag se\"></span></span>",
                        @"Switzerland <span class=\"f16\"><span id=\"flag\" class=\"flag ch\"></span></span>",
                        @"Russia <span class=\"f16\"><span id=\"flag\" class=\"flag ru\"></span></span>",
                        @"Netherlands <span class=\"f16\"><span id=\"flag\" class=\"flag nl\"></span></span>",
                        @"Finland <span class=\"f16\"><span id=\"flag\" class=\"flag fi\"></span></span>",
                        nil];
    options.xAxis = [NSArray arrayWithObjects:xAxis, nil];

    HIYAxis *yAxis = [[HIYAxis alloc] init];
    yAxis.lineWidth = @0;
    yAxis.tickInterval = @25;
    yAxis.reversedStacks = [[NSNumber alloc] initWithBool:false];
    yAxis.endOnTick = [[NSNumber alloc] initWithBool:true];
    yAxis.showLastLabel = [[NSNumber alloc] initWithBool:true];
    options.yAxis = [NSArray arrayWithObjects:yAxis, nil];

    HIPlotOptions *plotoptions = [[HIPlotOptions alloc]init];
    plotoptions.column = [[HIColumn alloc] init];
    plotoptions.column.stacking = @"normal";
    plotoptions.column.borderWidth = @0;
    plotoptions.column.pointPadding = @0;
    plotoptions.column.groupPadding = @0.15;
    options.plotOptions = plotoptions;

    HIColumn *column1 = [[HIColumn alloc] init];
    column1.name = @"Gold medals";
    column1.data = [NSArray arrayWithObjects:@132, @105, @92, @73, @64, @57, @55, @47, @45, @43, nil];

    HIColumn *column2 = [[HIColumn alloc] init];
    column2.name = @"Silver medals";
    column2.data = [NSArray arrayWithObjects:@125, @110, @86, @64, @81, @46, @46, @38, @44, @63, nil];

    HIColumn *column3 = [[HIColumn alloc] init];
    column3.name = @"Bronze medals";
    column3.data = [NSArray arrayWithObjects:@111, @90, @60, @62, @87, @55, @52, @35, @41, @61, nil];

    options.series = [NSArray arrayWithObjects:column1, column2, column3, nil];

    chartView.options = options;

    [self.view addSubview:chartView];
}

@end
