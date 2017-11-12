#import <UIKit/UIKit.h>
#import <Highcharts/Highcharts.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HIChartView *chartView = [[HIChartView alloc] initWithFrame:self.view.bounds];

    chartView.theme = @"dark-unica";
    
    HIOptions *options = [[HIOptions alloc]init];
    
    HIChart *chart = [[HIChart alloc]init];
    chart.type = @"gauge";
    chart.plotBorderWidth = @0;
    chart.plotShadow = [[NSNumber alloc] initWithBool:false];
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"Speedometer";
    
    HIPane *pane = [[HIPane alloc]init];
    pane.startAngle = @-150;
    pane.endAngle = @150;
    HIBackground *background1 = [[HIBackground alloc]init];
    background1.backgroundColor = [[HIColor alloc]initWithLinearGradient:@{
                                                                           @"x1": @0,
                                                                           @"y1": @0,
                                                                           @"x2": @0,
                                                                           @"y2": @1
                                                                           }
                                                                   stops:@[
                                                                           @[
                                                                               @0,
                                                                               @"#FFF"
                                                                               ],
                                                                           @[
                                                                               @1,
                                                                               @"#333"
                                                                               ]
                                                                           ]];
    background1.borderWidth = @0;
    background1.outerRadius = @"109%";
    HIBackground *background2 = [[HIBackground alloc]init];
    background2.backgroundColor = [[HIColor alloc]initWithLinearGradient:@{
                                                                           @"x1": @0,
                                                                           @"y1": @0,
                                                                           @"x2": @0,
                                                                           @"y2": @1
                                                                           } stops:@[
                                                                                     @[
                                                                                         @0,
                                                                                         @"#333"
                                                                                         ],
                                                                                     @[
                                                                                         @1,
                                                                                         @"#FFF"
                                                                                         ]
                                                                                     ]];
    background2.borderWidth = @1;
    background2.outerRadius = @"107%";
    HIBackground *background3 = [[HIBackground alloc]init];
    HIBackground *background4 = [[HIBackground alloc]init];
    background4.backgroundColor = [[HIColor alloc]initWithHexValue:@"DDD"];
    background4.borderWidth = @0;
    background4.outerRadius = @"105%";
    background4.innerRadius = @"103%";
    pane.background = [NSMutableArray arrayWithObjects:background1, background2, background3, background4, nil];
    
    HIYAxis *yaxis = [[HIYAxis alloc]init];
    yaxis.min = @0;
    yaxis.max = @200;
    yaxis.minorTickWidth = @1;
    yaxis.minorTickLength = @10;
    yaxis.minorTickPosition = @"inside";
    yaxis.minorTickColor = [[HIColor alloc]initWithHexValue:@"666"];
    yaxis.tickPixelInterval = @30;
    yaxis.tickWidth = @2;
    yaxis.tickPosition = @"inside";
    yaxis.tickLength = @10;
    yaxis.tickColor = [[HIColor alloc]initWithHexValue:@"666"];
    yaxis.labels = [[HILabels alloc]init];
    yaxis.labels.step = @2;
    yaxis.title = [[HITitle alloc]init];
    yaxis.title.text = @"km/h";
    HIPlotBands *plotband1 = [[HIPlotBands alloc]init];
    plotband1.from = @0;
    plotband1.to = @120;
    plotband1.color = [[HIColor alloc]initWithHexValue:@"55BF3B"];
    HIPlotBands *plotband2 = [[HIPlotBands alloc]init];
    plotband2.from = @120;
    plotband2.to = @160;
    plotband2.color = [[HIColor alloc]initWithHexValue:@"DDDF0D"];
    HIPlotBands *plotband3 = [[HIPlotBands alloc]init];
    plotband3.from = @160;
    plotband3.to = @200;
    plotband3.color = [[HIColor alloc]initWithHexValue:@"DF5353"];
    yaxis.plotBands = [NSMutableArray arrayWithObjects:plotband1, plotband2, plotband3, nil];
    
    
    HIGauge *gauge = [[HIGauge alloc]init];
    gauge.name = @"Speed";
    gauge.tooltip = [[HITooltip alloc]init];
    gauge.tooltip.valueSuffix = @" km/h";
    gauge.data = [NSMutableArray arrayWithObject:@80];
    
    options.chart = chart;
    options.title = title;
    options.pane = pane;
    options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
    options.series = [NSMutableArray arrayWithObjects: gauge, nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
