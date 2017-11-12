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
    chart.plotBackgroundColor = [[HIColor alloc]init];
    chart.plotBorderWidth = [[NSNumber alloc]init];
    chart.plotShadow = [[NSNumber alloc] initWithBool:false];
    chart.type = @"pie";
    
    NSArray *colors = @[
                        [[HIColor alloc]initWithRGB:15 green:72 blue:127],
                        [[HIColor alloc]initWithRGB:52 green:109 blue:164],
                        [[HIColor alloc]initWithRGB:88 green:145 blue:200],
                        [[HIColor alloc]initWithRGB:124 green:181 blue:236],
                        [[HIColor alloc]initWithRGB:160 green:217 blue:255],
                        [[HIColor alloc]initWithRGB:196 green:253 blue:255],
                        [[HIColor alloc]initWithRGB:233 green:255 blue:255],
                        [[HIColor alloc]initWithRGB:255 green:255 blue:255],
                        [[HIColor alloc]initWithRGB:255 green:255 blue:255],
                        [[HIColor alloc]initWithRGB:255 green:255 blue:255]
                        ];
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"Browser market shares at a specific website, 2014";
    
    HITooltip *tooltip = [[HITooltip alloc]init];
    tooltip.pointFormat = @"{series.name}: <b>{point.percentage:.1f}%</b>";
    
    HIPlotOptions *plotoptions = [[HIPlotOptions alloc]init];
    plotoptions.pie = [[HIPie alloc]init];
    plotoptions.pie.allowPointSelect = [[NSNumber alloc] initWithBool:true];
    plotoptions.pie.cursor = @"pointer";
    plotoptions.pie.dataLabels = [[HIDataLabels alloc]init];
    plotoptions.pie.dataLabels.enabled = [[NSNumber alloc] initWithBool:true];
    plotoptions.pie.dataLabels.format = @"<b>{point.name}</b>: {point.percentage:.1f} %";
    plotoptions.pie.dataLabels.style = [[HIStyle alloc] init];
    plotoptions.pie.dataLabels.style.color = @"black";
    
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
                     @"sliced": [[NSNumber alloc] initWithBool:true],
                     @"selected": [[NSNumber alloc] initWithBool:true]
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
    options.colors = colors;
    options.title = title;
    options.tooltip = tooltip;
    options.plotOptions = plotoptions;
    options.series = [NSMutableArray arrayWithObjects:pie,  nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
