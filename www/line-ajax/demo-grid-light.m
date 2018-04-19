#import <UIKit/UIKit.h>
#import <Highcharts/Highcharts.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HIChartView *chartView = [[HIChartView alloc] initWithFrame:self.view.bounds];

    chartView.theme = @"grid-light";

    chartView.plugins = @[ @"series-label" ];
    
    HIOptions *options = [[HIOptions alloc]init];
    
    HIChart *chart = [[HIChart alloc] init];
    chart.scrollablePlotArea = [[HIScrollablePlotArea alloc] init];
    chart.scrollablePlotArea.minWidth = @700;
    
    HIData *data = [[HIData alloc] init];
    data.csvURL = @"https://cdn.rawgit.com/highcharts/highcharts/057b672172ccc6c08fe7dbb27fc17ebca3f5b770/samples/data/analytics.csv";
    data.beforeParse = [[HIFunction alloc] initWithJSFunction:@"function (csv) { return csv.replace(/\n\n/g, '\n'); }"];
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"Daily visits at www.highcharts.com";
    
    HISubtitle *subtitle = [[HISubtitle alloc]init];
    subtitle.text = @"Source: Google Analytics";
    
    HIXAxis *xaxis = [[HIXAxis alloc]init];
    xaxis.tickInterval = @(7 * 24 * 3600 * 1000);
    xaxis.tickWidth = @0;
    xaxis.gridLineWidth = @1;
    xaxis.labels = [[HILabels alloc] init];
    xaxis.labels.align = @"left";
    xaxis.labels.x = @3;
    xaxis.labels.y = @-3;
    
    HIYAxis *yaxis1 = [[HIYAxis alloc]init];
    yaxis1.title = [[HITitle alloc]init];
    yaxis1.labels = [[HILabels alloc] init];
    yaxis1.labels.align = @"left";
    yaxis1.labels.x = @3;
    yaxis1.labels.y = @16;
    yaxis1.labels.format = @"{value:.,0f}";
    yaxis1.showFirstLabel = [[NSNumber alloc] initWithBool:false];
    
    HIYAxis *yaxis2 = [[HIYAxis alloc]init];
    yaxis2.linkedTo = @0;
    yaxis2.gridLineWidth = @0;
    yaxis2.opposite = [[NSNumber alloc] initWithBool:true];
    yaxis2.title = [[HITitle alloc]init];
    yaxis2.labels = [[HILabels alloc] init];
    yaxis2.labels.x = @-3;
    yaxis2.labels.y = @16;
    yaxis2.labels.format = @"{value:.,0f}";
    yaxis2.showFirstLabel = [[NSNumber alloc] initWithBool:false];
    
    HILegend *legend = [[HILegend alloc]init];
    legend.align = @"left";
    legend.verticalAlign = @"top";
    legend.borderWidth = @0;
    
    HITooltip *tooltip = [[HITooltip alloc] init];
    tooltip.shared = [[NSNumber alloc] initWithBool:true];
//    tooltip.crosshairs = [[NSNumber alloc] initWithBool:true];
    
    HIPlotOptions *plotoptions = [[HIPlotOptions alloc] init];
    plotoptions.series = [[HISeries alloc] init];
    plotoptions.series.cursor = @"pointer";
    plotoptions.series.point = [[HIPoint alloc] init];
    plotoptions.series.point.events = [[HIEvents alloc] init];
    plotoptions.series.point.events.click = [[HIFunction alloc] initWithJSFunction:@"function (e) { hs.htmlExpand(null, { pageOrigin: { x: e.pageX || e.clientX, y: e.pageY || e.clientY }, headingText: this.series.name, maincontentText: Highcharts.dateFormat('%A, %b %e, %Y', this.x) + ':<br/> ' + this.y + ' visits', width: 200 }); }"];
    plotoptions.series.marker = [[HIMarker alloc] init];
    plotoptions.series.marker.lineWidth = @1;
    
    HISeries *series1 = [[HISeries alloc] init];
    series1.name = @"All sessions";
    series1.lineWidth = @4;
    series1.marker = [[HIMarker alloc] init];
    series1.marker.radius = @4;
    
    HISeries *series2 = [[HISeries alloc] init];
    series2.name = @"New user";
    
    options.chart = chart;
    options.data = data;
    options.title = title;
    options.subtitle = subtitle;
    options.xAxis = [NSMutableArray arrayWithObject:xaxis];
    options.yAxis = @[yaxis1, yaxis2];
    options.legend = legend;
    options.tooltip = tooltip;
    options.plotOptions = plotoptions;
    options.series = [NSMutableArray arrayWithObjects:series1, series2, nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
