#import <UIKit/UIKit.h>
#import <Highcharts/Highcharts.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HIChartView *chartView = [[HIChartView alloc] initWithFrame:self.view.bounds];

    chartView.theme = @"sand-signika";
    
    chartView.plugins = @[ @"variable-pie" ];
    
    HIOptions *options = [[HIOptions alloc] init];
    
    HIChart *chart = [[HIChart alloc] init];
    chart.type = @"variablepie";
    
    HITitle *title = [[HITitle alloc] init];
    title.text = @"Countries compared by population density and total area.";
    
    HITooltip *tooltip = [[HITooltip alloc] init];
    tooltip.headerFormat = @"";
    tooltip.pointFormat = @"<span style=\"color:{point.color}\">\u25CF</span> <b> {point.name}</b><br/>Area (square km): <b>{point.y}</b><br/>Population density (people per square km): <b>{point.z}</b><br/>";
    
    HIVariablepie *variablepie = [[HIVariablepie alloc] init];
    variablepie.minPointSize = @10;
    variablepie.innerSize = @"20%";
    variablepie.zMin = @0;
    variablepie.name = @"countries";
    variablepie.data = @[
                         @{
                             @"name": @"Spain",
                             @"y": @505370,
                             @"z": @92.9
                             }, @{
                             @"name": @"France",
                             @"y": @551500,
                             @"z": @118.7
                             }, @{
                             @"name": @"Poland",
                             @"y": @312685,
                             @"z": @124.6
                             }, @{
                             @"name": @"Czech Republic",
                             @"y": @78867,
                             @"z": @137.5
                             }, @{
                             @"name": @"Italy",
                             @"y": @301340,
                             @"z": @201.8
                             }, @{
                             @"name": @"Switzerland",
                             @"y": @41277,
                             @"z": @214.5
                             }, @{
                             @"name": @"Germany",
                             @"y": @357022,
                             @"z": @235.6
                             }
                         ];
    
    
    options.chart = chart;
    options.title = title;
    options.tooltip = tooltip;
    options.series = [NSMutableArray arrayWithObjects:variablepie, nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
