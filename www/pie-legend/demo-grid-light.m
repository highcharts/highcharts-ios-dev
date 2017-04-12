#import <UIKit/UIKit.h>
#import <Highcharts/Highcharts.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HIGChartView *chartView = [[HIGChartView alloc] initWithFrame:self.view.bounds];

    chartView.theme = @"grid-light";
    
    HIOptions *options = [[HIOptions alloc]init];
    
    HIChart *chart = [[HIChart alloc]init];
    chart.plotBackgroundColor = [[HIColor alloc]init];
    chart.plotBorderWidth = [[NSNumber alloc]init];
    chart.plotShadow = @false;
    chart.type = @"pie";
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"Browser market shares January, 2015 to May, 2015";
    
    HITooltip *tooltip = [[HITooltip alloc]init];
    tooltip.pointFormat = @"{series.name}: <b>{point.percentage:.1f}%</b>";
    
    HIPlotOptions *plotoptions = [[HIPlotOptions alloc]init];
    plotoptions.pie = [[HIPlotOptionsPie alloc]init];
    plotoptions.pie.allowPointSelect = @true;
    plotoptions.pie.cursor = @"pointer";
    plotoptions.pie.dataLabels = [[HIPlotOptionsPieDataLabels alloc]init];
    plotoptions.pie.dataLabels.enabled = @false;
    plotoptions.pie.showInLegend = @true;
    
    HIPie *pie = [[HIPie alloc]init];
    pie.name = @"Brands";
    pie.data = @[
                 @{
                     @"name": @"Microsoft Internet Explorer",
                     @"y": @56.33
                     },
                 @{
                     @"name": @"Chrome",
                     @"y": @24.03,
                     @"sliced": @true,
                     @"selected": @true
                     },
                 @{
                     @"name": @"Firefox",
                     @"y": @10.38
                     },
                 @{
                     @"name": @"Safari",
                     @"y": @4.77
                     },
                 @{
                     @"name": @"Opera",
                     @"y": @0.91
                     },
                 @{
                     @"name": @"Proprietary or Undetectable",
                     @"y": @0.2
                     }
                 ];
    
    options.chart = chart;
    options.title = title;
    options.tooltip = tooltip;
    options.plotOptions = plotoptions;
    options.series = [NSMutableArray arrayWithObjects:pie,  nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
