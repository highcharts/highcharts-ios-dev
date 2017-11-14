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
    chart.type = @"waterfall";
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"Highcharts Waterfall";
    
    HIXAxis *xAxis = [[HIXAxis alloc]init];
    xAxis.type = @"category";
    
    HIYAxis *yAxis = [[HIYAxis alloc]init];
    yAxis.title = [[HITitle alloc]init];
    yAxis.title.text = @"USD";
    
    HILegend *legend = [[HILegend alloc]init];
    legend.enabled = [[NSNumber alloc] initWithBool:false];
    
    HITooltip *tooltip = [[HITooltip alloc]init];
    tooltip.pointFormat = @"<b>${point.y:,.2f}</b> USD";
    
    HIWaterfall *series = [[HIWaterfall alloc]init];
    series.upColor = [[HIColor alloc]initWithHexValue:@"90ed7d"];
    series.color = [[HIColor alloc]initWithHexValue:@"f7a35c"];
    
    //You can add objects by hand or creating data objects - one presented below:
    
    HIData *data = [[HIData alloc]init];
    data.name = @"Positive Balance";
    data.isIntermediateSum = [[NSNumber alloc] initWithBool:true];
    data.color = [[HIColor alloc]initWithHexValue:@"434348"];
    
    series.data = [NSMutableArray arrayWithObjects:@{
                                                     @"name": @"Start",
                                                     @"y": @120000
                                                     },
                   @{
                     @"name": @"Product Revenue",
                     @"y": @569000
                     },
                   @{
                     @"name": @"Service Revenue",
                     @"y": @231000
                     },
                   data,
                   @{
                     @"name": @"Fixed Costs",
                     @"y": @-342000
                     },
                   @{
                     @"name": @"Variable Costs",
                     @"y": @-233000
                     },
                   @{
                     @"name": @"Balance",
                     @"isSum": @true,
                     @"color": @"#434348"
                     }, nil];
    
    series.dataLabels = [[HIDataLabels alloc]init];
    series.dataLabels.enabled = [[NSNumber alloc] initWithBool:true];
    series.dataLabels.formatter = [[HIFunction alloc] initWithFunction:@"function () { return Highcharts.numberFormat(this.y / 1000, 0, ',') + 'k'; }"];
    series.dataLabels.style = [[HIStyle alloc] init];
    series.dataLabels.style.fontWeight = @"bold";
    series.pointPadding = @0;
    
    options.chart = chart;
    options.title = title;
    options.xAxis = [NSMutableArray arrayWithObject:xAxis];
    options.yAxis = [NSMutableArray arrayWithObject:yAxis];
    options.legend = legend;
    options.tooltip = tooltip;
    options.series = [NSMutableArray arrayWithObject:series];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
