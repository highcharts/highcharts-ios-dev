#import <UIKit/UIKit.h>
#import <Highcharts/Highcharts.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HIChartView *chartView = [[HIChartView alloc] initWithFrame:self.view.bounds];

    chartView.theme = @"sand-signika";
    
    HIChartView *chartView = [[HIChartView alloc] initWithFrame:self.view.bounds];
    
    HIOptions *options = [[HIOptions alloc]init];
    
    HIChart *chart = [[HIChart alloc]init];
    chart.plotBackgroundColor = [[HIColor alloc]init];
    chart.plotBorderWidth = @0;
    chart.plotShadow = [[NSNumber alloc] initWithBool:false];
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"Browser<br>shares<br>2015";
    title.align = @"center";
    title.verticalAlign = @"middle";
    title.y = @40;
    
    HITooltip *tooltip = [[HITooltip alloc]init];
    tooltip.pointFormat = @"{series.name}: <b>{point.percentage:.1f}%</b>";
    
    HIPlotOptions *plotoptions = [[HIPlotOptions alloc]init];
    plotoptions.pie = [[HIPie alloc]init];
    plotoptions.pie.dataLabels = [[HIDataLabels alloc]init];
    plotoptions.pie.dataLabels.enabled = [[NSNumber alloc] initWithBool:true];
    plotoptions.pie.dataLabels.distance = @-50;
    plotoptions.pie.dataLabels.style = [[HIStyle alloc] init];
    plotoptions.pie.dataLabels.style.color = @"white";
    plotoptions.pie.dataLabels.style.fontWeight = @"bold";
    plotoptions.pie.dataLabels.style.textOutline = @"0px 1px 2px black";
    plotoptions.pie.startAngle = @-90;
    plotoptions.pie.endAngle = @90;
    plotoptions.pie.center = @[@"50%", @"75%"];
    
    HIPie *pie = [[HIPie alloc]init];
    HIData *data = [[HIData alloc]init];
    data.name = @"Proprietary or Undetectable";
    data.y = @0.2;
    data.dataLabels = @{@"enabled": [[NSNumber alloc] initWithBool:false]};
    pie.name = @"Browser share";
    pie.innerSize = @"50%";
    pie.data = @[
                 @[
                     @"Firefox",
                     @10.38
                     ],
                 @[
                     @"IE",
                     @56.33
                     ],
                 @[
                     @"Chrome",
                     @24.03
                     ],
                 @[
                     @"Safari",
                     @4.77
                     ],
                 @[
                     @"Opera",
                     @0.91
                     ],
                 data
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
