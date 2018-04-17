#import <UIKit/UIKit.h>
#import <Highcharts/Highcharts.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HIChartView *chartView = [[HIChartView alloc] initWithFrame:self.view.bounds];
    
    HIChart *chart = [[HIChart alloc]init];
    chart.polar = [[NSNumber alloc] initWithBool:true];
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"Highcharts Polar Chart";
    
    HIPane *pane = [[HIPane alloc]init];
    pane.startAngle = @0;
    pane.endAngle = @360;
    
    HIXAxis *xaxis = [[HIXAxis alloc]init];
    xaxis.tickInterval = @45;
    xaxis.min = @0;
    xaxis.max = @360;
    xaxis.labels = [[HILabels alloc]init];
    xaxis.labels.formatter = [[HIFunction alloc] initWithJSFunction:@"function () { return this.value + '°'; }"];
    
    HIYAxis *yaxis = [[HIYAxis alloc]init];
    yaxis.min = @0;
    
    HIPlotOptions *plotOptions = [[HIPlotOptions alloc]init];
    plotOptions.series = [[HISeries alloc]init];
    plotOptions.series.pointStart = @0;
    plotOptions.series.pointInterval = @45;
    plotOptions.column = [[HIColumn alloc]init];
    plotOptions.column.pointPadding = @0;
    plotOptions.column.groupPadding = @0;
    
    HIColumn *column = [[HIColumn alloc]init];
    column.name = @"Column";
    column.data = [NSMutableArray arrayWithObjects:@8,
                   @7,
                   @6,
                   @5,
                   @4,
                   @3,
                   @2,
                   @1, nil];
    column.pointPlacement = @"between";
    
    HILine *line = [[HILine alloc]init];
    line.name = @"Line";
    line.data = [NSMutableArray arrayWithObjects:@1,
                 @2,
                 @3,
                 @4,
                 @5,
                 @6,
                 @7,
                 @8, nil];
    
    HIArea *area = [[HIArea alloc]init];
    area.name = @"Area";
    area.data = [NSMutableArray arrayWithObjects:@1,
                 @8,
                 @2,
                 @7,
                 @3,
                 @6,
                 @4,
                 @5, nil];
    
    HIOptions *options = [[HIOptions alloc]init];
    options.chart = chart;
    options.title = title;
    options.pane = pane;
    options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
    options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
    options.plotOptions = plotOptions;
    options.series = [NSMutableArray arrayWithObjects:column, line, area, nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
