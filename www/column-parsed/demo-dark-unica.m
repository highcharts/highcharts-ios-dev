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
    
    HIData *data = [[HIData alloc] init];
    data.table = [self datatable];
    
    HIChart *chart = [[HIChart alloc]init];
    chart.type = @"column";
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"Data extracted from a HTML table in the page";
    
    HIYAxis *yaxis = [[HIYAxis alloc]init];
    yaxis.allowDecimals = [[NSNumber alloc] initWithBool:false];
    yaxis.title = [[HITitle alloc]init];
    yaxis.title.text = @"Units";
    
    HITooltip *tooltip = [[HITooltip alloc] init];
    tooltip.formatter = [[HIFunction alloc] initWithFunction:@"function () { return '<b>' + this.series.name + '</b><br/>' + this.point.y + ' ' + this.point.name.toLowerCase();"];
    
    options.data = data;
    options.chart = chart;
    options.title = title;
    options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
    options.tooltip = tooltip;
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

- (NSArray*)datatable {
    return @[
             @{
                 @"name": @"Jane",
                 @"Apples" : @3,
                 @"Pears" : @2,
                 @"Plums" : @5,
                 @"Bananas" : @1,
                 @"Oranges" : @2
                 },
             @{
                 @"name": @"John",
                 @"Apples" : @4,
                 @"Pears" : @0,
                 @"Plums" : @11,
                 @"Bananas" : @1,
                 @"Oranges" : @4
                 }
             ];
}

@end
