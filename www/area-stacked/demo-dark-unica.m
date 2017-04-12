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
    chart.type = @"area";
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"Historic and Estimated Worldwide Population Growth by Region";
    
    HISubtitle *subtitle = [[HISubtitle alloc]init];
    subtitle.text = @"Source: Wikipedia.org";
    
    HIXAxis *xaxis = [[HIXAxis alloc]init];
    xaxis.categories = [NSMutableArray arrayWithObjects:@"1750",
                        @"1800",
                        @"1850",
                        @"1900",
                        @"1950",
                        @"1999",
                        @"2050", nil];
    xaxis.tickmarkPlacement = @"on";
    xaxis.title = [[HIXAxisTitle alloc]init];
    xaxis.title.text = @"";
    
    HIYAxis *yaxis = [[HIYAxis alloc]init];
    yaxis.title = [[HIYAxisTitle alloc]init];
    yaxis.title.text = @"Billions";
    yaxis.labels = [[HIYAxisLabels alloc]init];
    
    HITooltip *tooltip = [[HITooltip alloc]init];
    tooltip.shared = @true;
    tooltip.valueSuffix = @" millions";
    
    HIPlotOptions *plotoptions = [[HIPlotOptions alloc]init];
    plotoptions.area = [[HIPlotOptionsArea alloc]init];
    plotoptions.area.stacking = @"normal";
    plotoptions.area.lineColor = [[HIColor alloc]initWithHexValue:@"666666"];
    plotoptions.area.lineWidth = @1;
    plotoptions.area.marker = [[HIPlotOptionsAreaMarker alloc]init];
    plotoptions.area.marker.lineWidth = @1;
    plotoptions.area.marker.lineColor = [[HIColor alloc]initWithHexValue:@"666666"];
    
    HIArea *area1 = [[HIArea alloc]init];
    area1.name = @"Asia";
    area1.data = [NSMutableArray arrayWithObjects:@502,
                  @635,
                  @809,
                  @947,
                  @1402,
                  @3634,
                  @5268, nil];
    
    HIArea *area2 = [[HIArea alloc]init];
    area2.name = @"Africa";
    area2.data = [NSMutableArray arrayWithObjects:@106,
                  @107,
                  @111,
                  @133,
                  @221,
                  @767,
                  @1766, nil];
    
    HIArea *area3 = [[HIArea alloc]init];
    area3.name = @"Europe";
    area3.data = [NSMutableArray arrayWithObjects:@163,
                  @203,
                  @276,
                  @408,
                  @547,
                  @729,
                  @628, nil];
    
    HIArea *area4 = [[HIArea alloc]init];
    area4.name = @"America";
    area4.data = [NSMutableArray arrayWithObjects:@18,
                  @31,
                  @54,
                  @156,
                  @339,
                  @818,
                  @1201, nil];
    
    HIArea *area5 = [[HIArea alloc]init];
    area5.name = @"Oceania";
    area5.data = [NSMutableArray arrayWithObjects:@2,
                  @2,
                  @2,
                  @6,
                  @13,
                  @30,
                  @46, nil];
    
    
    options.chart = chart;
    options.title = title;
    options.subtitle = subtitle;
    options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
    options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
    options.tooltip = tooltip;
    options.plotOptions = plotoptions;
    options.series = [NSMutableArray arrayWithObjects: area1, area2, area3, area4, area5, nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
