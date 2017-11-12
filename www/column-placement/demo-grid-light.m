#import <UIKit/UIKit.h>
#import <Highcharts/Highcharts.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HIChartView *chartView = [[HIChartView alloc] initWithFrame:self.view.bounds];

    chartView.theme = @"grid-light";
    
    HIOptions *options = [[HIOptions alloc]init];
    
    HIChart *chart = [[HIChart alloc]init];
    chart.type = @"column";
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"Efficiency Optimization by Branch";
    
    HIXAxis *xaxis = [[HIXAxis alloc]init];
    xaxis.categories = [NSMutableArray arrayWithObjects:@"Seattle HQ",
                        @"San Francisco",
                        @"Tokyo", nil];
    
    HIYAxis *yaxis1 = [[HIYAxis alloc]init];
    yaxis1.min = @0;
    yaxis1.title = [[HITitle alloc]init];
    yaxis1.title.text = @"Employees";
    
    HIYAxis *yaxis2 = [[HIYAxis alloc]init];
    yaxis2.title = [[HITitle alloc]init];
    yaxis2.title.text = @"Profit (millions)";
    yaxis2.opposite = [[NSNumber alloc] initWithBool:true];
    
    HILegend *legend = [[HILegend alloc]init];
    legend.shadow = [[NSNumber alloc] initWithBool:false];
    
    HITooltip *tooltip = [[HITooltip alloc]init];
    tooltip.shared = [[NSNumber alloc] initWithBool:true];
    
    HIPlotOptions *plotoptions = [[HIPlotOptions alloc]init];
    plotoptions.column = [[HIColumn alloc]init];
    plotoptions.column.grouping = [[NSNumber alloc] initWithBool:false];
    plotoptions.column.shadow = [[NSNumber alloc] initWithBool:false];
    plotoptions.column.borderWidth = @0;
    
    HIColumn *column1 = [[HIColumn alloc]init];
    column1.name = @"Employees";
    column1.color = [[HIColor alloc]initWithRGBA:165 green:170 blue:217 alpha:1];
    column1.pointPadding = @0.3;
    column1.pointPlacement = @-0.2;
    column1.data = [NSMutableArray arrayWithObjects:@150,
                    @73,
                    @20, nil];
    
    HIColumn *column2 = [[HIColumn alloc]init];
    column2.name = @"Employees Optimized";
    column2.color = [[HIColor alloc]initWithRGBA:126 green:86 blue:134 alpha:0.9];
    column2.pointPadding = @0.4;
    column2.pointPlacement = @-0.2;
    column2.data = [NSMutableArray arrayWithObjects:@140,
                    @90,
                    @40, nil];
    
    HIColumn *column3 = [[HIColumn alloc]init];
    column3.name = @"Profit";
    column3.color = [[HIColor alloc]initWithRGBA:248 green:161 blue:63 alpha:1];
    column3.tooltip = [[HITooltip alloc]init];
    column3.tooltip.valuePrefix = @"$";
    column3.tooltip.valueSuffix = @" M";
    column3.pointPadding = @0.3;
    column3.pointPlacement = @0.2;
    column3.yAxis = @1;
    column3.data = [NSMutableArray arrayWithObjects:@183.6,
                    @178.8,
                    @198.5, nil];
    
    HIColumn *column4 = [[HIColumn alloc]init];
    column4.name = @"Profit Optimized";
    column4.color = [[HIColor alloc]initWithRGBA:186 green:60 blue:61 alpha:0.9];
    column4.tooltip = [[HITooltip alloc]init];
    column4.tooltip.valuePrefix = @"$";
    column4.tooltip.valueSuffix = @" M";
    column4.pointPadding = @0.4;
    column4.pointPlacement = @0.2;
    column4.yAxis = @1;
    column4.data = [NSMutableArray arrayWithObjects:@203.6,
                    @198.8,
                    @208.5, nil];
    
    options.chart = chart;
    options.title = title;
    options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
    options.yAxis = [NSMutableArray arrayWithObjects:yaxis1, yaxis2, nil];
    options.legend = legend;
    options.tooltip = tooltip;
    options.plotOptions = plotoptions;
    options.series = [NSMutableArray arrayWithObjects: column1, column2, column3, column4, nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
