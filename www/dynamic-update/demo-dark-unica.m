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
    chart.type = @"spline";
    chart.marginRight = @10;
    
    HIEvents *events = [[HIEvents alloc] init];
    events.load = [[HIFunction alloc] initWithJSFunction:@"function () { var series = this.series[0]; setInterval(function () { var x = (new Date()).getTime(), y = Math.random(); series.addPoint([x, y], true, true); }, 1000); }"];
    chart.events = events;
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"Live random data";
    
    HIXAxis *xaxis = [[HIXAxis alloc]init];
    xaxis.type = @"datetime";
    xaxis.tickPixelInterval = @150;
    
    HIYAxis *yaxis = [[HIYAxis alloc]init];
    yaxis.title = [[HITitle alloc] init];
    yaxis.title.text = @"Value";
    
    HIPlotLines *plotLines = [[HIPlotLines alloc] init];
    plotLines.value = @0;
    plotLines.width = @1;
    plotLines.color = [[HIColor alloc] initWithHexValue:@"808080"];
    yaxis.plotLines = [NSMutableArray arrayWithObjects:plotLines, nil];
    
    HITooltip *tooltip = [[HITooltip alloc] init];
    tooltip.formatter = [[HIFunction alloc] initWithJSFunction:@"function () { return '<b>' + this.series.name + '</b><br/>' + Highcharts.dateFormat('%Y-%m-%d %H:%M:%S', this.x) + '<br/>' + Highcharts.numberFormat(this.y, 2); }"];
    
    HILegend *legend = [[HILegend alloc] init];
    legend.enabled = [[NSNumber alloc] initWithBool:false];
    
    HIExporting *exporting = [[HIExporting alloc] init];
    exporting.enabled = [[NSNumber alloc] initWithBool:false];
    
    HISpline *spline = [[HISpline alloc] init];
    spline.name = @"Random data";
    spline.data = [NSMutableArray arrayWithObjects:@{ @"x": @1506522303996, @"y": @0.9008867958057089 },
                   @{ @"x": @1506522304996, @"y": @0.8231864980698256 },
                   @{ @"x": @1506522305996, @"y": @0.9825011509882808 },
                   @{ @"x": @1506522306996, @"y": @0.003652610490540442 },
                   @{ @"x": @1506522307996, @"y": @0.002609150181310582 },
                   @{ @"x": @1506522308996, @"y": @0.01461317357831804 },
                   @{ @"x": @1506522309996, @"y": @0.8999787609990089 },
                   @{ @"x": @1506522310996, @"y": @0.14058473457764165 },
                   @{ @"x": @1506522311996, @"y": @0.34443475714783733 },
                   @{ @"x": @1506522312996, @"y": @0.5556814038393371 },
                   @{ @"x": @1506522313996, @"y": @0.6196520717912178 },
                   @{ @"x": @1506522314996, @"y": @0.03434593570780475 },
                   @{ @"x": @1506522315996, @"y": @0.2980087069912135 },
                   @{ @"x": @1506522316996, @"y": @0.7572371332071955 },
                   @{ @"x": @1506522317996, @"y": @0.6794544224961554 },
                   @{ @"x": @1506522318996, @"y": @0.07563910614922953 },
                   @{ @"x": @1506522319996, @"y": @0.049179773664749016 },
                   @{ @"x": @1506522320996, @"y": @0.6572695585799792 },
                   @{ @"x": @1506522321996, @"y": @0.3828701378166286 },
                   @{ @"x": @1506522322996, @"y": @0.2583323455534311 }, nil];
    
    options.chart = chart;
    options.title = title;
    options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
    options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
    options.tooltip = tooltip;
    options.legend = legend;
    options.exporting = exporting;
    options.series = [NSMutableArray arrayWithObjects:spline,  nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
