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
    chart.zoomType = @"xy";
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"Average Monthly Temperature and Rainfall in Tokyo";
    
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
    yaxis1.labels.style.color = @"#434348";
    yaxis1.title = [[HITitle alloc]init];
    yaxis1.title.text = @"Temperature";
    yaxis1.title.style = [[HICSSObject alloc] init];
    yaxis1.title.style.color = @"#434348";
    
    HIYAxis *yaxis2 = [[HIYAxis alloc]init];
    yaxis2.labels = [[HILabels alloc]init];
    yaxis2.labels.format = @"{value} mm";
    yaxis2.labels.style = [[HICSSObject alloc] init];
    yaxis2.labels.style.color = @"#7cb5ec";
    yaxis2.title = [[HITitle alloc]init];
    yaxis2.title.text = @"Rainfall";
    yaxis2.title.style = [[HICSSObject alloc] init];
    yaxis2.title.style.color = @"#7cb5ec";
    yaxis2.opposite = [[NSNumber alloc] initWithBool:true];
    
    HITooltip *tooltip = [[HITooltip alloc]init];
    tooltip.shared = [[NSNumber alloc] initWithBool:true];
    
    HILegend *legend = [[HILegend alloc]init];
    legend.layout = @"vertical";
    legend.align = @"left";
    legend.x = @120;
    legend.verticalAlign = @"top";
    legend.y = @100;
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
    
    HISpline *spline = [[HISpline alloc]init];
    spline.name = @"Temperature";
    spline.data = [NSMutableArray arrayWithObjects:@7,
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
    spline.tooltip = [[HITooltip alloc]init];
    spline.tooltip.valueSuffix = @"°C";
    
    
    
    options.chart = chart;
    options.title = title;
    options.subtitle = subtitle;
    options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
    options.yAxis = [NSMutableArray arrayWithObjects:yaxis1, yaxis2, nil];
    options.tooltip = tooltip;
    options.legend = legend;
    options.series = [NSMutableArray arrayWithObjects: column, spline, nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
