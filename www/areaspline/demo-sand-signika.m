#import <UIKit/UIKit.h>
#import <Highcharts/Highcharts.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HIChartView *chartView = [[HIChartView alloc] initWithFrame:self.view.bounds];

    chartView.theme = @"sand-signika";
    
    HIOptions *options = [[HIOptions alloc]init];
    
    HIChart *chart = [[HIChart alloc]init];
    chart.type = @"areaspline";
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"Average fruit consumption during one week";
    
    HILegend *legend = [[HILegend alloc]init];
    legend.layout = @"vertical";
    legend.align = @"left";
    legend.verticalAlign = @"top";
    legend.x = @150;
    legend.y = @100;
    legend.floating = [[NSNumber alloc] initWithBool:true];
    legend.borderWidth = @1;
    legend.backgroundColor = [[HIColor alloc]initWithHexValue:@"FFFFFF"];
    
    HIXAxis *xaxis = [[HIXAxis alloc]init];
    xaxis.categories = [NSMutableArray arrayWithObjects:@"Monday",
                        @"Tuesday",
                        @"Wednesday",
                        @"Thursday",
                        @"Friday",
                        @"Saturday",
                        @"Sunday", nil];
    HIPlotBands *plotband = [[HIPlotBands alloc]init];
    plotband.from = @4.5;
    plotband.to = @6.5;
    plotband.color = [[HIColor alloc]initWithRGBA:68 green:170 blue:213 alpha:.2];
    xaxis.plotBands = [NSMutableArray arrayWithObject:plotband];
    
    HIYAxis *yaxis = [[HIYAxis alloc]init];
    yaxis.title = [[HITitle alloc]init];
    yaxis.title.text = @"Fruit unit";
    
    HITooltip *tooltip = [[HITooltip alloc]init];
    tooltip.shared = [[NSNumber alloc] initWithBool:true];
    tooltip.valueSuffix = @" units";
    
    HICredits *credits = [[HICredits alloc]init];
    credits.enabled = [[NSNumber alloc] initWithBool:false];
    
    HIPlotOptions *plotoptions = [[HIPlotOptions alloc]init];
    plotoptions.areaspline = [[HIAreaspline alloc]init];
    plotoptions.areaspline.fillOpacity = @0.5;
    
    HIAreaspline *areaspline1 = [[HIAreaspline alloc]init];
    areaspline1.name = @"John";
    areaspline1.data = [NSMutableArray arrayWithObjects:@3,
                        @4,
                        @3,
                        @5,
                        @4,
                        @10,
                        @12, nil];
    
    HIAreaspline *areaspline2 = [[HIAreaspline alloc]init];
    areaspline2.name = @"Jane";
    areaspline2.data = [NSMutableArray arrayWithObjects:@1,
                        @3,
                        @4,
                        @3,
                        @3,
                        @5,
                        @4, nil];
    
    options.chart = chart;
    options.title = title;
    options.legend = legend;
    options.xAxis = [NSMutableArray arrayWithObject:xaxis];
    options.yAxis = [NSMutableArray arrayWithObject:yaxis];
    options.tooltip = tooltip;
    options.credits = credits;
    options.plotOptions = plotoptions;
    options.series = [NSMutableArray arrayWithObjects:areaspline1, areaspline2, nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
