#import <UIKit/UIKit.h>
#import <Highcharts/Highcharts.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HIChartView *chartView = [[HIChartView alloc] initWithFrame:self.view.bounds];
    
    HIOptions *options = [[HIOptions alloc]init];
    
    HIChart *chart = [[HIChart alloc]init];
    chart.type = @"funnel";
    chart.marginRight = @100;
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"Sales funnel";
    title.x = @-50;
    
    HIPlotOptions *plotOptions = [[HIPlotOptions alloc]init];
    plotOptions.funnel = [[HIFunnel alloc]init];
    plotOptions.funnel.dataLabels = [[HIDataLabels alloc]init];
    plotOptions.funnel.dataLabels.enabled = [[NSNumber alloc] initWithBool:true];
    plotOptions.funnel.dataLabels.format = @"<b>{point.name}</b> ({point.y:,.0f})";
    plotOptions.funnel.dataLabels.color = [[HIColor alloc]initWithHexValue:@"FFFFFF"];
    plotOptions.funnel.dataLabels.softConnector = [[NSNumber alloc] initWithBool:true];
    plotOptions.funnel.neckWidth = @"30%";
    plotOptions.funnel.neckHeight = @"25%";
    
    HILegend *legend = [[HILegend alloc]init];
    legend.enabled = @false;
    
    HIFunnel *series = [[HIFunnel alloc]init];
    series.name = @"Unique users";
    series.data = [NSMutableArray arrayWithObjects:@[
                                                     @"Website visits",
                                                     @15654
                                                     ],
                   @[
                     @"Downloads",
                     @4064
                     ],
                   @[
                     @"Requested price list",
                     @1987
                     ],
                   @[
                     @"Invoice sent",
                     @976
                     ],
                   @[
                     @"Finalized",
                     @846
                     ], nil];
    options.chart = chart;
    options.title = title;
    options.plotOptions = plotOptions;
    options.legend = legend;
    options.series = [NSMutableArray arrayWithObject:series];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
