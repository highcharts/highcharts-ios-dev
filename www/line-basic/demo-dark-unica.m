#import <UIKit/UIKit.h>
#import <Highcharts/Highcharts.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HIGChartView *chartView = [[HIGChartView alloc] initWithFrame:self.view.bounds];

    chartView.theme = @"dark-unica";
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"Monthly Average Temperature";
    title.x = @-20;
    
    HISubtitle *subtitle = [[HISubtitle alloc]init];
    subtitle.text = @"Source: WorldClimate.com";
    subtitle.x = @-20;
    
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
    yaxis.title.text = @"Temperature (°C)";
    yaxis.plotLines = [NSMutableArray arrayWithObjects:@{
                                                         @"value": @0,
                                                         @"width": @1,
                                                         @"color": @"#808080"
                                                         }, nil];
    
    HITooltip *tooltip = [[HITooltip alloc]init];
    tooltip.valueSuffix = @"°C";
    
    HILegend *legend = [[HILegend alloc]init];
    legend.layout = @"vertical";
    legend.align = @"right";
    legend.verticalAlign = @"middle";
    legend.borderWidth = @0;
    
    HILine *line1 = [[HILine alloc]init];
    line1.name = @"Tokyo";
    line1.data = [NSMutableArray arrayWithObjects:@7,
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
    
    HILine *line2 = [[HILine alloc]init];
    line2.name = @"New York";
    line2.data = [NSMutableArray arrayWithObjects:@7,
                  @-0.2,
                  @0.8,
                  @5.7,
                  @11.3,
                  @17,
                  @22,
                  @24.8,
                  @24.1,
                  @20.1,
                  @14.1,
                  @8.6,
                  @2.5, nil];
    
    HILine *line3 = [[HILine alloc]init];
    line3.name = @"Berlin";
    line3.data = [NSMutableArray arrayWithObjects:@7,
                  @-0.9,
                  @0.6,
                  @3.5,
                  @8.4,
                  @13.5,
                  @17,
                  @18.6,
                  @17.9,
                  @14.3,
                  @9,
                  @3.9,
                  @1, nil];
    
    HILine *line4 = [[HILine alloc]init];
    line4.name = @"London";
    line4.data = [NSMutableArray arrayWithObjects:@7,
                  @3.9,
                  @4.2,
                  @5.7,
                  @8.5,
                  @11.9,
                  @15.2,
                  @17,
                  @16.6,
                  @14.2,
                  @10.3,
                  @6.6,
                  @4.8, nil];
    
    
    HIOptions *options = [[HIOptions alloc]init];
    options.title = title;
    options.subtitle = subtitle;
    options.xAxis = [NSMutableArray arrayWithObject:xaxis];
    options.yAxis = [NSMutableArray arrayWithObject:yaxis];
    options.tooltip = tooltip;
    options.legend = legend;
    options.series = [NSMutableArray arrayWithObjects:line1, line2, line3, line4, nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
