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
    chart.options3d.alpha = @15;
    chart.options3d.beta = @15;
    chart.options3d.depth = @40;
    chart.options3d.viewDistance = @25;
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"Total fruit consumption, grouped by gender";
    
    HIXAxis *xaxis = [[HIXAxis alloc]init];
    xaxis.categories = [NSMutableArray arrayWithObjects:@"Apples",
                        @"Oranges",
                        @"Pears",
                        @"Grapes",
                        @"Bananas", nil];
    xaxis.labels = [[HILabels alloc] init];
    xaxis.labels.skew3d = [[NSNumber alloc] initWithBool:true];
    xaxis.labels.style = [[HICSSObject alloc] init];
    xaxis.labels.style.fontSize = @"16px";
    
    HIYAxis *yaxis = [[HIYAxis alloc]init];
    yaxis.allowDecimals = [[NSNumber alloc] initWithBool:false];
    yaxis.min = @0;
    yaxis.title = [[HITitle alloc]init];
    yaxis.title.text = @"Number of fruits";
    yaxis.title.skew3d = [[NSNumber alloc] initWithBool:true];
    
    HITooltip *tooltip = [[HITooltip alloc]init];
    tooltip.headerFormat = @"<b>{point.key}</b><br>";
    tooltip.pointFormat = @"<span style=\"color:{series.color}\">●</span> {series.name}: {point.y} / {point.stackTotal}";
    
    HIPlotOptions *plotoptions = [[HIPlotOptions alloc]init];
    plotoptions.column = [[HIColumn alloc]init];
    plotoptions.column.depth = @40;
    plotoptions.column.stacking = @"normal";
    
    HIColumn *column1 = [[HIColumn alloc]init];
    column1.name = @"John";
    column1.data = [NSMutableArray arrayWithObjects:@5,
                    @3,
                    @4,
                    @7,
                    @2, nil];
    column1.stack = @"male";
    
    HIColumn *column2 = [[HIColumn alloc]init];
    column2.name = @"Joe";
    column2.data = [NSMutableArray arrayWithObjects:@3,
                    @4,
                    @4,
                    @2,
                    @5, nil];
    column2.stack = @"male";
    
    HIColumn *column3 = [[HIColumn alloc]init];
    column3.name = @"Jane";
    column3.data = [NSMutableArray arrayWithObjects:@2,
                    @5,
                    @6,
                    @2,
                    @1, nil];
    column3.stack = @"female";
    
    HIColumn *column4 = [[HIColumn alloc]init];
    column4.name = @"Jane";
    column4.data = [NSMutableArray arrayWithObjects:@3,
                    @0,
                    @4,
                    @4,
                    @3, nil];
    column4.stack = @"female";
    
    options.chart = chart;
    options.title = title;
    options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
    options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
    options.tooltip = tooltip;
    options.plotOptions = plotoptions;
    options.series = [NSMutableArray arrayWithObjects: column1, column2, column3, column4, nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
