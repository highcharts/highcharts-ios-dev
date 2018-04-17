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
    chart.type = @"spline";
    chart.inverted = [[NSNumber alloc] initWithBool:true];
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"Atmosphere Temperature by Altitude";
    
    HISubtitle *subtitle = [[HISubtitle alloc]init];
    subtitle.text = @"According to the Standard Atmosphere Model";
    
    HIXAxis *xaxis = [[HIXAxis alloc]init];
    xaxis.reversed = [[NSNumber alloc] initWithBool:false];
    xaxis.title = [[HITitle alloc]init];
    xaxis.title.text = @"Altitude";
    xaxis.labels = [[HILabels alloc]init];
    xaxis.labels.format = @"{value} km";
    xaxis.maxPadding = @0.05;
    xaxis.showLastLabel = [[NSNumber alloc] initWithBool:true];
    
    HIYAxis *yaxis = [[HIYAxis alloc]init];
    yaxis.title = [[HITitle alloc]init];
    yaxis.title.text = @"Temperature";
    yaxis.labels = [[HILabels alloc]init];
    yaxis.labels.format = @"{value}°";
    yaxis.lineWidth = @2;
    
    HILegend *legend = [[HILegend alloc]init];
    legend.enabled = [[NSNumber alloc] initWithBool:false];
    
    HITooltip *tooltip = [[HITooltip alloc]init];
    tooltip.headerFormat = @"<b>{series.name}</b><br/>";
    tooltip.pointFormat = @"{point.x} km: {point.y}°C";
    
    HIPlotOptions *plotoptions = [[HIPlotOptions alloc]init];
    plotoptions.spline = [[HISpline alloc]init];
    plotoptions.spline.marker = [[HIMarker alloc]init];
    plotoptions.spline.marker.enabled = [[NSNumber alloc] initWithBool:false];
    
    HISpline *series = [[HISpline alloc]init];
    series.name = @"Temperature";
    series.data = [NSMutableArray arrayWithObjects:@[
                                                     @0,
                                                     @15
                                                     ],
                   @[
                     @10,
                     @-50
                     ],
                   @[
                     @20,
                     @-56.5
                     ],
                   @[
                     @30,
                     @-46.5
                     ],
                   @[
                     @40,
                     @-22.1
                     ],
                   @[
                     @50,
                     @-2.5
                     ],
                   @[
                     @60,
                     @-27.7
                     ],
                   @[
                     @70,
                     @-55.7
                     ],
                   @[
                     @80,
                     @-76.5
                     ], nil];
    
    options.chart = chart;
    options.title = title;
    options.subtitle = subtitle;
    options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
    options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
    options.legend = legend;
    options.tooltip = tooltip;
    options.plotOptions = plotoptions;
    options.series = [NSMutableArray arrayWithObjects:series, nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
