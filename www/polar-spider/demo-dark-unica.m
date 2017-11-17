#import <UIKit/UIKit.h>
#import <Highcharts/Highcharts.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HIChartView *chartView = [[HIChartView alloc] initWithFrame:self.view.bounds];

    chartView.theme = @"dark-unica";
    
    HIChart *chart = [[HIChart alloc]init];
    chart.polar = [[NSNumber alloc] initWithBool:true];
    chart.type = @"line";
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"Budget vs spending";
    title.x = @-80;
    
    HIPane *pane = [[HIPane alloc]init];
    pane.size = @"80%";
    
    HIXAxis *xaxis = [[HIXAxis alloc]init];
    xaxis.categories = @[
                         @"Sales",
                         @"Marketing",
                         @"Development",
                         @"Customer Support",
                         @"Information Technology",
                         @"Administration"
                         ];
    xaxis.tickmarkPlacement = @"on";
    xaxis.lineWidth = @0;
    
    HIYAxis *yaxis = [[HIYAxis alloc]init];
    yaxis.min = @0;
    yaxis.lineWidth = @0;
    yaxis.gridLineInterpolation = @"polygon";
    
    HITooltip *tooltip = [[HITooltip alloc]init];
    tooltip.shared = [[NSNumber alloc] initWithBool:true];
    tooltip.pointFormat = @"<span style=\"color:{series.color}\">{series.name}: <b>${point.y:,.0f}</b><br/>";
    
    HILegend *legend = [[HILegend alloc]init];
    legend.align = @"right";
    legend.verticalAlign = @"top";
    legend.y = @70;
    legend.layout = @"vertical";
    
    HILine *line1 = [[HILine alloc]init];
    line1.name = @"Allocated Budget";
    line1.data = @[
                   @43000,
                   @19000,
                   @60000,
                   @35000,
                   @17000,
                   @10000
                   ];
    line1.pointPlacement = @"on";
    
    HILine *line2 = [[HILine alloc]init];
    line2.name = @"Actual spending";
    line2.data = @[
                   @50000,
                   @39000,
                   @42000,
                   @31000,
                   @26000,
                   @14000
                   ];
    line2.pointPlacement = @"on";
    
    
    HIOptions *options = [[HIOptions alloc]init];
    options.chart = chart;
    options.title = title;
    options.pane = pane;
    options.tooltip = tooltip;
    options.legend = legend;
    options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
    options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
    options.series = [NSMutableArray arrayWithObjects:line1, line2, nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
