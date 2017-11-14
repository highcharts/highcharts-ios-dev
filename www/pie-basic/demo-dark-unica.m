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
    chart.type = @"pie";
    chart.plotShadow = [[NSNumber alloc] initWithBool:false];
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"Browser market shares January, 2015 to May, 2015";
    
    HITooltip *tooltip = [[HITooltip alloc]init];
    tooltip.pointFormat = @"{series.name}: <b>{point.percentage:.1f}%</b>";
    
    HIPlotOptions *plotOptions = [[HIPlotOptions alloc]init];
    plotOptions.pie = [[HIPie alloc]init];
    plotOptions.pie.allowPointSelect = [[NSNumber alloc] initWithBool:true];
    plotOptions.pie.cursor = @"pointer";
    plotOptions.pie.dataLabels = [[HIDataLabels alloc]init];
    plotOptions.pie.dataLabels.enabled = [[NSNumber alloc] initWithBool:true];
    plotOptions.pie.dataLabels.format = @"<b>{point.name}</b>: {point.percentage:.1f} %";
    plotOptions.pie.dataLabels.style = [[HIStyle alloc] init];
    plotOptions.pie.dataLabels.style.color = @"black";
    
    HIPie *pie = [[HIPie alloc]init];
    pie.name = @"Brands";
    pie.data = [NSMutableArray arrayWithObjects:@{
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
                  }, nil];
    
    HIOptions *options = [[HIOptions alloc]init];
    options.chart = chart;
    options.title = title;
    options.tooltip = tooltip;
    options.plotOptions = plotOptions;
    options.series = [NSMutableArray arrayWithObjects:pie, nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
