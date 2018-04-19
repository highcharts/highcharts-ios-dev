#import <UIKit/UIKit.h>
#import <Highcharts/Highcharts.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HIChartView *chartView = [[HIChartView alloc] initWithFrame:self.view.bounds];

    chartView.theme = @"grid-light";
    
    HIOptions *options = [[HIOptions alloc] init];
    
    HIChart *chart = [[HIChart alloc] init];
    chart.type = @"solidgauge";
    chart.marginTop = @50;
    
    HITitle *title = [[HITitle alloc] init];
    title.text = @"Activity";
    title.style = [[HIStyle alloc] init];
    title.style.fontSize = @"24px";
    
    HITooltip *tooltip = [[HITooltip alloc] init];
    tooltip.borderWidth = @0;
    tooltip.backgroundColor = [[HIColor alloc] initWithName:@"none"];
    tooltip.shadow = [[NSNumber alloc] initWithBool:false];
    tooltip.style = [[HIStyle alloc] init];
    tooltip.style.fontSize = @"16px";
    tooltip.pointFormat = @"'{series.name}<br><span style=\"font-size:2em; color: {point.color}; font-weight: bold\">{point.y}%</span>'";
    tooltip.positioner = [[HIFunction alloc] initWithJSFunction:@"function (labelWidth) { return { x: 200 - labelWidth / 2, y: 180 }; }"];
    
    HIPane *pane = [[HIPane alloc] init];
    pane.startAngle = @0;
    pane.endAngle = @360;
    
    HIBackground *paneBackground1 = [[HIBackground alloc] init];
    paneBackground1.outerRadius = @"112%";
    paneBackground1.innerRadius = @"88%";
    paneBackground1.backgroundColor = [[HIColor alloc] initWithRGBA:106 green:165 blue:231 alpha:0.35];
    paneBackground1.borderWidth = @0;
    
    HIBackground *paneBackground2 = [[HIBackground alloc] init];
    paneBackground2.outerRadius = @"87%";
    paneBackground2.innerRadius = @"63%";
    paneBackground2.backgroundColor = [[HIColor alloc] initWithRGBA:51 green:52 blue:56 alpha:0.35];
    paneBackground2.borderWidth = @0;
    
    HIBackground *paneBackground3 = [[HIBackground alloc] init];
    paneBackground3.outerRadius = @"62%";
    paneBackground3.innerRadius = @"38%";
    paneBackground3.backgroundColor = [[HIColor alloc] initWithRGBA:130 green:238 blue:106 alpha:0.35];
    paneBackground3.borderWidth = @0;
    
    pane.background =[NSMutableArray arrayWithObjects:paneBackground1, paneBackground2, paneBackground3, nil];
    
    HIYAxis *yaxis = [[HIYAxis alloc] init];
    yaxis.min = @0;
    yaxis.max = @100;
    yaxis.lineWidth = 0;
    yaxis.tickPosition = @"[]";
    
    HIPlotOptions *plotOptions = [[HIPlotOptions alloc] init];
    plotOptions.solidgauge = [[HISolidgauge alloc] init];
    plotOptions.solidgauge.dataLabels = [[HIDataLabels alloc] init];
    plotOptions.solidgauge.dataLabels.enabled = [[NSNumber alloc] initWithBool:false];
    plotOptions.solidgauge.linecap = @"round";
    plotOptions.solidgauge.stickyTracking = [[NSNumber alloc] initWithBool:false];
    plotOptions.solidgauge.rounded = [[NSNumber alloc] initWithBool:true];
    
    HISolidgauge *solidgauge1 = [[HISolidgauge alloc] init];
    solidgauge1.name = @"Move";
    HIData *data1 = [[HIData alloc] init];
    data1.color = [[HIColor alloc] initWithRGB:106 green:165 blue:231];
    data1.radius = @"112%";
    data1.innerRadius = @"88%";
    data1.y = @80;
    solidgauge1.data = [NSMutableArray arrayWithObjects:data1, nil];
    
    HISolidgauge *solidgauge2 = [[HISolidgauge alloc] init];
    solidgauge2.name = @"Exercise";
    HIData *data2 = [[HIData alloc] init];
    data2.color = [[HIColor alloc] initWithRGB:51 green:52 blue:56];
    data2.radius = @"87%";
    data2.innerRadius = @"63%";
    data2.y = @65;
    solidgauge2.data = [NSMutableArray arrayWithObjects:data2, nil];
    
    HISolidgauge *solidgauge3 = [[HISolidgauge alloc] init];
    solidgauge3.name = @"Stand";
    HIData *data3 = [[HIData alloc] init];
    data3.color = [[HIColor alloc] initWithRGB:130 green:238 blue:106];
    data3.radius = @"62%";
    data3.innerRadius = @"38%";
    data3.y = @50;
    solidgauge3.data = [NSMutableArray arrayWithObjects:data3, nil];
    
    options.chart = chart;
    options.title = title;
    options.tooltip = tooltip;
    options.pane = pane;
    options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
    options.plotOptions = plotOptions;
    options.series = [NSMutableArray arrayWithObjects:solidgauge1, solidgauge2, solidgauge3, nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
