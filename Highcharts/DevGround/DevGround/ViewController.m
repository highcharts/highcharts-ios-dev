//
//  ViewController.m
//  DevGround
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import "ViewController.h"
#import <Highcharts/Highcharts.h>
#import "ChartType.h"

@interface ViewController ()
@property (strong, nonatomic) HIGChartView *chartView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.chartView = [[HIGChartView alloc] initWithFrame:CGRectMake(self.view.bounds.origin.x, self.view.bounds.origin.y + 20, self.view.bounds.size.width, 240.0f)];
    
    HIOptions *options = [[HIOptions alloc]init];
    
    Exporting *exporting = [[Exporting alloc]init];
    exporting.enabled = @NO;
    
    Chart *chart = [[Chart alloc]init];
    chart.type = @"column";
    
    Title *title = [[Title alloc]init];
    title.text = @"";
    
    Subtitle *subtitle = [[Subtitle alloc]init];
    subtitle.text = @"";
    
    XAxis *xAxis = [[XAxis alloc]init];
    
    YAxis *yAxis = [[YAxis alloc]init];
    yAxis.title = [[YAxisTitle alloc]init];
    yAxis.title.text = @"";
    yAxis.tickAmount = @1;
    
    Column *series = [[Column alloc]init];
    series.enableMouseTracking = @NO;
    series.showInLegend = @NO;
    series.data = [NSMutableArray arrayWithObjects: @49.9,
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
                   @54.4, nil];
    
    options.exporting = exporting;
    options.chart = chart;
    options.title = title;
    options.subtitle = subtitle;
    options.xAxis = [NSMutableArray arrayWithObjects:xAxis, nil];
    options.yAxis = [NSMutableArray arrayWithObjects:yAxis, nil];
    options.series = [NSMutableArray arrayWithObjects:series, nil];

    
    self.chartView.options = options;
    
    [self.view addSubview:self.chartView];
    
    [self.button addTarget:self action:@selector(buttonReload:) forControlEvents:UIControlEventTouchUpInside];
    for (UIButton *button in self.typeButtons) {
        [button addTarget:self action:@selector(typeButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
    }
    [self.view bringSubviewToFront:self.button];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)buttonReload:(UIButton*)sender
{
    HIOptions *options = [[HIOptions alloc]init];
    
    Chart *chart = [[Chart alloc]init];
    chart.type = @"waterfall";
    
    Title *title = [[Title alloc]init];
    title.text = @"Waterfall";
    
    XAxis *xAxis = [[XAxis alloc]init];
    xAxis.type = @"category";
    
    YAxis *yAxis = [[YAxis alloc]init];
    yAxis.title = [[YAxisTitle alloc]init];
    yAxis.title.text = @"USD";
    yAxis.labels = [[YAxisLabels alloc]init];
    yAxis.labels.format = @"{value}k";
    
    Legend *legend = [[Legend alloc]init];
    legend.enabled = @NO;
    
    Tooltip *tooltip = [[Tooltip alloc]init];
    tooltip.pointFormat = @"<b>${point.y:,.2f}</b> USD";
    
    Waterfall *series = [[Waterfall alloc]init];
    series.upColor = [[HexColor alloc]initWithString:@"#90ed7d"];
    series.color = [[HexColor alloc]initWithString:@"#f7a35c"];
    series.data = [NSMutableArray arrayWithObjects:@{
                                                     @"name": @"Start",
                                                     @"y": @120
                                                     },
                   @{
                     @"name": @"Product Revenue",
                     @"y": @569
                     },
                   @{
                     @"name": @"Service Revenue",
                     @"y": @231
                     },
                   @{
                     @"name": @"Positive Balance",
                     @"isIntermediateSum": @true,
                     @"color": @"#434348"
                     },
                   @{
                     @"name": @"Fixed Costs",
                     @"y": @-342
                     },
                   @{
                     @"name": @"Variable Costs",
                     @"y": @-233
                     },
                   @{
                     @"name": @"Balance",
                     @"isSum": @true,
                     @"color": @"#434348"
                     }, nil];
    
    series.dataLabels = [[WaterfallDataLabels alloc]init];
    series.dataLabels.enabled = @YES;
    series.dataLabels.format = @"{point.y}k";
    series.dataLabels.style = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"bold",@"fontWeight",  nil];
    series.pointPadding = @0;
    
    options.chart = chart;
    options.title = title;
    options.xAxis = [NSMutableArray arrayWithObject:xAxis];
    options.yAxis = [NSMutableArray arrayWithObject:yAxis];
    options.legend = legend;
    options.tooltip = tooltip;
    options.series = [NSMutableArray arrayWithObject:series];
    
    self.chartView.options = options;
    
    [self.chartView reload];
}

-(void)typeButtonTapped:(UIButton *)sender
{
    self.chartView.options = [ChartType getChartByType:sender.titleLabel.text];
    [self.chartView reload];
}

@end
