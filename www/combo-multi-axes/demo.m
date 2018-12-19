#import <UIKit/UIKit.h>
#import <Highcharts/Highcharts.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HIChartView *chartView = [[HIChartView alloc] initWithFrame:self.view.bounds];
    
    HIOptions *options = [[HIOptions alloc]init];
    
    HIChart *chart = [[HIChart alloc]init];
    chart.zoomType = @"xy";
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"Average Monthly Weather Data for Tokyo";
    
    HISubtitle *subtitle = [[HISubtitle alloc]init];
    subtitle.text = @"Source: WorldClimate.com";
    
    HIXAxis *xaxis = [[HIXAxis alloc]init];
    xaxis.categories = [NSMutableArray arrayWithObjects:@"Jan",
                        @"Feb",
                        @"Mar",
                        @"Apr",
                        @"May",
                        @"Jun",
                        @"Jul",
                        @"Aug",
                        @"Sep",
                        @"Oct",
                        @"Nov",
                        @"Dec"
                        , nil];
    xaxis.crosshair = [[HICrosshair alloc]init];
    
    HIYAxis *yaxis1 = [[HIYAxis alloc]init];
    yaxis1.labels = [[HILabels alloc]init];
    yaxis1.labels.format = @"{value}°C";
    yaxis1.labels.style = [[HICSSObject alloc] init];
    yaxis1.labels.style.color = @"#90ed7d";
    yaxis1.title = [[HITitle alloc]init];
    yaxis1.title.text = @"Temperature";
    yaxis1.title.style = [[HICSSObject alloc] init];
    yaxis1.title.style.color = @"#90ed7d";
    yaxis1.opposite = [[NSNumber alloc] initWithBool:true];
    
    HIYAxis *yaxis2 = [[HIYAxis alloc]init];
    yaxis2.gridLineWidth = @0;
    yaxis2.labels = [[HILabels alloc]init];
    yaxis2.labels.format = @"{value} mm";
    yaxis2.labels.style = [[HICSSObject alloc] init];
    yaxis2.labels.style.color = @"#7cb5ec";
    yaxis2.title = [[HITitle alloc]init];
    yaxis2.title.text = @"Rainfall";
    yaxis2.title.style = [[HICSSObject alloc] init];
    yaxis2.title.style.color = @"#7cb5ec";
    HIYAxis *yaxis3 = [[HIYAxis alloc]init];
    yaxis3.gridLineWidth = @0;
    yaxis3.labels = [[HILabels alloc]init];
    yaxis3.labels.format = @"{value} mb";
    yaxis3.labels.style = [[HICSSObject alloc] init];
    yaxis3.labels.style.color = @"#434348";
    yaxis3.title = [[HITitle alloc]init];
    yaxis3.title.text = @"Sea-Level Pressure";
    yaxis3.title.style = [[HICSSObject alloc] init];
    yaxis3.title.style.color = @"#434348";
    yaxis3.opposite = [[NSNumber alloc] initWithBool:true];
    
    HITooltip *tooltip = [[HITooltip alloc]init];
    tooltip.shared = [[NSNumber alloc] initWithBool:true];
    
    HILegend *legend = [[HILegend alloc]init];
    legend.layout = @"vertical";
    legend.align = @"left";
    legend.x = @80;
    legend.verticalAlign = @"top";
    legend.y = @60;
    legend.floating = [[NSNumber alloc] initWithBool:true];
    legend.backgroundColor = [[HIColor alloc]initWithHexValue:@"FFFFFF"];
    
    HIColumn *column = [[HIColumn alloc]init];
    column.name = @"Rainfall";
    column.yAxis = @1;
    column.data = [NSMutableArray arrayWithObjects:@49.9,
                   @71.5,
                   @106.4,
                   @129.2,
                   @144,
                   @176,
                   @135.6,
                   @148.5,
                   @216.4,
                   @194.1,
                   @95.6,
                   @54.4
                   , nil];
    column.tooltip = [[HITooltip alloc]init];
    column.tooltip.valueSuffix = @" mm";
    
    HISpline *spline1 = [[HISpline alloc]init];
    spline1.name = @"Sea-level Pressure";
    spline1.yAxis = @2;
    spline1.data = [NSMutableArray arrayWithObjects:@1016,
                    @1016,
                    @1015.9,
                    @1015.5,
                    @1012.3,
                    @1009.5,
                    @1009.6,
                    @1010.2,
                    @1013.1,
                    @1016.9,
                    @1018.2,
                    @1016.7, nil];
    spline1.marker = [[HIMarker alloc]init];
    spline1.marker.enabled = [[NSNumber alloc] initWithBool:false];
    spline1.dashStyle = @"shortdot";
    spline1.tooltip = [[HITooltip alloc]init];
    spline1.tooltip.valueSuffix = @" mb";
    
    HISpline *spline2 = [[HISpline alloc]init];
    spline2.name = @"Temperature";
    spline2.data = [NSMutableArray arrayWithObjects:@7,
                    @6.9,
                    @9.5,
                    @14.5,
                    @18.2,
                    @21.5,
                    @25.2,
                    @26.5,
                    @23.3,
                    @18.3,
                    @13.9,
                    @9.6, nil];
    spline2.tooltip = [[HITooltip alloc]init];
    spline2.tooltip.valueSuffix = @"°C";
    
    
    
    options.chart = chart;
    options.title = title;
    options.subtitle = subtitle;
    options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
    options.yAxis = [NSMutableArray arrayWithObjects:yaxis1, yaxis2, yaxis3, nil];
    options.tooltip = tooltip;
    options.legend = legend;
    options.series = [NSMutableArray arrayWithObjects: column, spline1, spline2, nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
