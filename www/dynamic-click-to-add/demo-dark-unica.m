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
    chart.type = @"scatter";
    chart.margin = [NSMutableArray arrayWithObjects:@70, @50, @60, @80, nil];
    
    HIChartEvents *events = [[HIChartEvents alloc] init];
    events.click = @"function (e) { var x = Math.round(e.xAxis[0].value), y = Math.round(e.yAxis[0].value), series = this.series[0]; series.addPoint([x, y]); }";
    chart.events = events;
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"User supplied data";
    
    HISubtitle *subtitle = [[HISubtitle alloc]init];
    subtitle.text = @"Click the plot area to add a point. Click a point to remove it.";
    
    HIXAxis *xaxis = [[HIXAxis alloc]init];
    xaxis.gridLineWidth = @1;
    xaxis.minPadding = @0.2;
    xaxis.maxPadding = @0.2;
    xaxis.maxZoom = @60;
    
    HIYAxis *yaxis = [[HIYAxis alloc]init];
    yaxis.title = [[HIYAxisTitle alloc] init];
    yaxis.title.text = @"Value";
    yaxis.minPadding = @0.2;
    yaxis.maxPadding = @0.2;
    yaxis.maxZoom = @60;
    
    HIYAxisPlotLines *plotLines = [[HIYAxisPlotLines alloc] init];
    plotLines.value = @0;
    plotLines.width = @1;
    plotLines.color = [[HIColor alloc] initWithHexValue:@"808080"];
    yaxis.plotLines = [NSMutableArray arrayWithObjects:plotLines, nil];
    
    HILegend *legend = [[HILegend alloc] init];
    legend.enabled = @false;
    
    HIExporting *exporting = [[HIExporting alloc] init];
    exporting.enabled = @false;
    
    HIPlotOptions *plotOptions = [[HIPlotOptions alloc] init];
    plotOptions.series = [[HIPlotOptionsSeries alloc] init];
    plotOptions.series.lineWidth = @1;
    plotOptions.series.point = [[HIPlotOptionsSeriesPoint alloc] init];
    plotOptions.series.point.events = [[HIPlotOptionsSeriesPointEvents alloc] init];
    plotOptions.series.point.events.click = @"function () { if (this.series.data.length > 1) { this.remove(); } }";
    
    HIScatter *scatter = [[HIScatter alloc] init];
    scatter.data =[NSMutableArray arrayWithObjects:@[@20, @20], @[@80, @80], nil];
    
    options.chart = chart;
    options.title = title;
    options.subtitle = subtitle;
    options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
    options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
    options.legend = legend;
    options.exporting = exporting;
    options.plotOptions = plotOptions;
    options.series = [NSMutableArray arrayWithObjects:scatter,  nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
