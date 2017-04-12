#import <UIKit/UIKit.h>
#import <Highcharts/Highcharts.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HIGChartView *chartView = [[HIGChartView alloc] initWithFrame:self.view.bounds];
    
    HIOptions *options = [[HIOptions alloc]init];
    
    HIChart *chart = [[HIChart alloc]init];
    chart.type = @"area";
    chart.spacingBottom = @30;
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"Fruit consumption *";
    
    HISubtitle *subtitle = [[HISubtitle alloc]init];
    subtitle.text = @"* Jane's banana consumption is unknown";
    subtitle.floating = @true;
    subtitle.align = @"right";
    subtitle.verticalAlign = @"bottom";
    subtitle.y = @15;
    
    HIXAxis *xaxis = [[HIXAxis alloc]init];
    xaxis.categories = [NSMutableArray arrayWithObjects:@"Apples",
                        @"Pears",
                        @"Oranges",
                        @"Bananas",
                        @"Grapes",
                        @"Plums",
                        @"Strawberries",
                        @"Raspberries", nil];
    
    HIYAxis *yaxis = [[HIYAxis alloc]init];
    yaxis.title = [[HIYAxisTitle alloc]init];
    yaxis.title.text = @"Y-Axis";
    yaxis.labels = [[HIYAxisLabels alloc]init];
    
    HITooltip *tooltip = [[HITooltip alloc]init];
    
    HILegend *legend = [[HILegend alloc]init];
    legend.layout = @"vertical";
    legend.align = @"left";
    legend.verticalAlign = @"top";
    legend.x = @150;
    legend.y = @100;
    legend.floating = @true;
    legend.borderWidth = @1;
    legend.backgroundColor = [[HIColor alloc]initWithHexValue:@"FFFFFF"];
    
    HIPlotOptions *plotoptions = [[HIPlotOptions alloc]init];
    plotoptions.area = [[HIPlotOptionsArea alloc]init];
    plotoptions.area.fillOpacity = @0.5;
    
    HICredits *credits = [[HICredits alloc]init];
    credits.enabled = @false;
    
    HIArea *area1 = [[HIArea alloc]init];
    area1.name = @"John";
    area1.data = [NSMutableArray arrayWithObjects:@0,
                  @1,
                  @4,
                  @4,
                  @5,
                  @2,
                  @3,
                  @7, nil];
    
    HIArea *area2 = [[HIArea alloc]init];
    area2.name = @"Jane";
    area2.data = [NSMutableArray arrayWithObjects:@1,
                  @0,
                  @3,
                  [NSNull null],
                  @3,
                  @1,
                  @2,
                  @1, nil];
    
    options.chart = chart;
    options.title = title;
    options.subtitle = subtitle;
    options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
    options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
    options.tooltip = tooltip;
    options.legend = legend;
    options.credits = credits;
    options.plotOptions = plotoptions;
    options.series = [NSMutableArray arrayWithObjects: area1, area2, nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
