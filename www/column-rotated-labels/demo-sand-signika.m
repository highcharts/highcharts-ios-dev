#import <UIKit/UIKit.h>
#import <Highcharts/Highcharts.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HIChartView *chartView = [[HIChartView alloc] initWithFrame:self.view.bounds];

    chartView.theme = @"sand-signika";
    
    HIOptions *options = [[HIOptions alloc]init];
    
    HIChart *chart = [[HIChart alloc]init];
    chart.type = @"column";
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"World's largest cities per 2014";
    
    HISubtitle *subtitle = [[HISubtitle alloc]init];
    subtitle.text = @"Source: <a href=\"http://en.wikipedia.org/wiki/List_of_cities_proper_by_population\">Wikipedia</a>";
    
    HIXAxis *xaxis = [[HIXAxis alloc]init];
    xaxis.type = @"category";
    xaxis.labels = [[HILabels alloc]init];
    xaxis.labels.rotation = @-45;
    xaxis.labels.style = [[HIStyle alloc] init];
    xaxis.labels.style.fontSize = @"13px";
    xaxis.labels.style.fontFamily = @"Verdana, sans-serif";
    
    HIYAxis *yaxis = [[HIYAxis alloc]init];
    yaxis.min = @0;
    yaxis.title = [[HITitle alloc]init];
    yaxis.title.text = @"Population (millions)";
    
    HILegend *legend = [[HILegend alloc]init];
    legend.enabled = [[NSNumber alloc] initWithBool:false];
    
    HITooltip *tooltip = [[HITooltip alloc]init];
    tooltip.pointFormat = @"Population in 2008: <b>{point.y:.1f} millions</b>";
    
    HIColumn *column = [[HIColumn alloc]init];
    column.name = @"Population";
    column.data = [NSMutableArray arrayWithObjects:@[
                                                     @"Shanghai",
                                                     @23.7
                                                     ],
                   @[
                     @"Lagos",
                     @16.1
                     ],
                   @[
                     @"Istanbul",
                     @14.2
                     ],
                   @[
                     @"Karachi",
                     @14
                     ],
                   @[
                     @"Mumbai",
                     @12.5
                     ],
                   @[
                     @"Moscow",
                     @12.1
                     ],
                   @[
                     @"São Paulo",
                     @11.8
                     ],
                   @[
                     @"Beijing",
                     @11.7
                     ],
                   @[
                     @"Guangzhou",
                     @11.1
                     ],
                   @[
                     @"Delhi",
                     @11.1
                     ],
                   @[
                     @"Shenzhen",
                     @10.5
                     ],
                   @[
                     @"Seoul",
                     @10.4
                     ],
                   @[
                     @"Jakarta",
                     @10
                     ],
                   @[
                     @"Kinshasa",
                     @9.3
                     ],
                   @[
                     @"Tianjin",
                     @9.3
                     ],
                   @[
                     @"Tokyo",
                     @9
                     ],
                   @[
                     @"Cairo",
                     @8.9
                     ],
                   @[
                     @"Dhaka",
                     @8.9
                     ],
                   @[
                     @"Mexico City",
                     @8.9
                     ],
                   @[
                     @"Lima",
                     @8.9
                     ]
                   , nil];
    column.dataLabels = [[HIDataLabels alloc]init];
    column.dataLabels.enabled = [[NSNumber alloc] initWithBool:true];
    column.dataLabels.rotation = @-90;
    column.dataLabels.color = [[HIColor alloc]initWithHexValue:@"FFFFFF"];
    column.dataLabels.align = @"right";
    column.dataLabels.format = @"{point.y:.1f}";
    column.dataLabels.y = @10;
    column.dataLabels.style = [[HIStyle alloc] init];
    column.dataLabels.style.fontSize = @"13px";
    column.dataLabels.style.fontFamily = @"Verdana, sans-serif";
    
    options.chart = chart;
    options.title = title;
    options.subtitle = subtitle;
    options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
    options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
    options.legend = legend;
    options.tooltip = tooltip;
    options.series = [NSMutableArray arrayWithObjects: column, nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
