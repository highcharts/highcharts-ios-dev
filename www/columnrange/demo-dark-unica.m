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
    chart.type = @"columnrange";
    chart.inverted = @true;
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"Temperature variation by month";
    
    HISubtitle *subtitle = [[HISubtitle alloc]init];
    subtitle.text = @"Observed in Vik i Sogn, Norway";
    
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
                        @"Dec", nil];
    
    HIYAxis *yaxis = [[HIYAxis alloc]init];
    yaxis.title = [[HIYAxisTitle alloc]init];
    yaxis.title.text = @"Temperature ( °C )";
    
    HITooltip *tooltip = [[HITooltip alloc]init];
    tooltip.valueSuffix = @"°C";
    
    HIPlotOptions *plotoptions = [[HIPlotOptions alloc]init];
    plotoptions.columnrange = [[HIPlotOptionsColumnrange alloc]init];
    plotoptions.columnrange.dataLabels = [[HIPlotOptionsColumnrangeDataLabels alloc]init];
    plotoptions.columnrange.dataLabels.enabled = @true;
    plotoptions.columnrange.dataLabels.format = @"{point.y}°C";
    
    HILegend *legend = [[HILegend alloc]init];
    legend.enabled = false;
    
    HIColumnrange *series = [[HIColumnrange alloc]init];
    series.name = @"Temperatures";
    series.data = [NSMutableArray arrayWithObjects:@[
                                                     @-9.7,
                                                       @9.4
                                                       ],
                   @[
                     @-8.7,
                       @6.5
                       ],
                   @[
                     @-3.5,
                       @9.4
                       ],
                   @[
                     @-1.4,
                       @19.9
                       ],
                   @[
                     @0,
                     @22.6
                     ],
                   @[
                     @2.9,
                     @29.5
                     ],
                   @[
                     @9.2,
                     @30.7
                     ],
                   @[
                     @7.3,
                     @26.5
                     ],
                   @[
                     @4.4,
                     @18
                     ],
                   @[
                     @-3.1,
                       @11.4
                       ],
                   @[
                     @-5.2,
                       @10.4
                       ],
                   @[
                     @-13.5,
                       @9.8
                       ]
                   , nil];
    
    options.chart = chart;
    options.title = title;
    options.subtitle = subtitle;
    options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
    options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
    options.tooltip = tooltip;
    options.plotOptions = plotoptions;
    options.legend = legend;
    options.series = [NSMutableArray arrayWithObjects:series, nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
