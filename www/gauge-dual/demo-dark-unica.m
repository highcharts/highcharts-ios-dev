
#import <UIKit/UIKit.h>
#import <Highcharts/Highcharts.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HIGChartView *chartView = [[HIGChartView alloc] initWithFrame:self.view.bounds];

    chartView.theme = @"dark-unica";

    HIOptions *options = [[HIOptions alloc]init];
    
    HIChart *chart = [[HIChart alloc]init];
    chart.type = @"gauge";
    chart.alignTicks = [[NSNumber alloc] initWithBool:false];
    chart.plotBorderWidth = @0;
    chart.plotShadow = [[NSNumber alloc] initWithBool:false];
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"Speedometer with dual axes";
    
    HIPane *pane = [[HIPane alloc]init];
    pane.startAngle = @-150;
    pane.endAngle = @150;
    
    HIYAxis *yaxis1 = [[HIYAxis alloc]init];
    yaxis1.min = @0;
    yaxis1.max = @200;
    yaxis1.lineColor = [[HIColor alloc]initWithHexValue:@"339"];
    yaxis1.tickColor = [[HIColor alloc]initWithHexValue:@"339"];
    yaxis1.minorTickColor = [[HIColor alloc]initWithHexValue:@"339"];
    yaxis1.offset = @-25;
    yaxis1.lineWidth = @2;
    yaxis1.labels = [[HILabels alloc]init];
    yaxis1.labels.distance = @-20;
    yaxis1.tickLength = @5;
    yaxis1.minorTickLength = @5;
    yaxis1.endOnTick = [[NSNumber alloc] initWithBool:false];
    
    HIYAxis *yaxis2 = [[HIYAxis alloc]init];
    yaxis2.min = @0;
    yaxis2.max = @124;
    yaxis2.tickPosition = @"outside";
    yaxis2.lineColor = [[HIColor alloc]initWithHexValue:@"933"];
    yaxis2.lineWidth = @2;
    yaxis2.minorTickPosition = @"outside";
    yaxis2.tickColor = [[HIColor alloc]initWithHexValue:@"933"];
    yaxis2.minorTickColor = [[HIColor alloc]initWithHexValue:@"933"];
    yaxis2.offset = @-20;
    yaxis2.labels = [[HILabels alloc]init];
    yaxis2.labels.distance = @12;
    yaxis2.tickLength = @5;
    yaxis2.minorTickLength = @5;
    yaxis2.endOnTick = [[NSNumber alloc] initWithBool:false];
    
    HIGauge *gauge = [[HIGauge alloc]init];
    gauge.name = @"Speed";
    gauge.tooltip = [[HITooltip alloc]init];
    gauge.tooltip.valueSuffix = @" km/h";
    gauge.dataLabels = [[HIDataLabels alloc] init];
    gauge.dataLabels.formatter = [[HIFunction alloc] initWithFunction:@"function () { var kmh = this.y, mph = Math.round(kmh * 0.621); return '<span style=\"color:#339\">' + kmh + ' km/h</span><br/>' + '<span style=\"color:#933\">' + mph + ' mph</span>'; }"];
    gauge.dataLabels.backgroundColor = [[HIColor alloc] initWithLinearGradient:@{ @"x1": @0, @"x2": @0, @"y1": @0, @"y2": @1 } stops:@[
                                                                                                                                       @[@0, @"#DDD"],
                                                                                                                                       @[@1, @"#FFF"]
                                                                                                                                       ]];
    gauge.data = [NSMutableArray arrayWithObjects:@80, nil];
    
    options.chart = chart;
    options.title = title;
    options.pane = pane;
    options.yAxis = [NSMutableArray arrayWithObjects:yaxis1, yaxis2, nil];
    options.series = [NSMutableArray arrayWithObjects: gauge, nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
