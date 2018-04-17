#import <UIKit/UIKit.h>
#import <Highcharts/Highcharts.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HIChartView *chartView = [[HIChartView alloc] initWithFrame:self.view.bounds];
    
    HIOptions *options = [[HIOptions alloc]init];
    
    HIChart *chart = [[HIChart alloc]init];
    chart.type = @"spline";
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"Monthly Average Temperature";
    
    HISubtitle *subtitle = [[HISubtitle alloc]init];
    subtitle.text = @"Source: WorldClimate.com";
    
    HIXAxis *xaxis = [[HIXAxis alloc]init];
    xaxis.categories = @[
                         @"Jan",
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
                         ];
    
    HIYAxis *yaxis = [[HIYAxis alloc]init];
    yaxis.title = [[HITitle alloc]init];
    yaxis.title.text = @"Temperature";
    yaxis.labels = [[HILabels alloc]init];
    yaxis.labels.formatter = [[HIFunction alloc] initWithJSFunction:@"function () { return this.value + '°'; }"];
    
    HITooltip *tooltip = [[HITooltip alloc]init];
//    tooltip.crosshairs = [[NSNumber alloc] initWithBool:true];
    tooltip.shared = [[NSNumber alloc] initWithBool:true];
    
    HIPlotOptions *plotoptions = [[HIPlotOptions alloc]init];
    plotoptions.spline = [[HISpline alloc]init];
    plotoptions.spline.marker = [[HIMarker alloc]init];
    plotoptions.spline.marker.radius = @4;
    plotoptions.spline.marker.lineColor = [[HIColor alloc]initWithHexValue:@"666666"];
    plotoptions.spline.marker.lineWidth = @1;
    
    HISpline *spline1 = [[HISpline alloc]init];
    spline1.name = @"Tokyo";
    spline1.marker = [[HIMarker alloc]init];
    spline1.marker.symbol = @"square";
    HIData *data1 = [[HIData alloc]init];
    data1.y = @26.5;
    data1.marker = [[HIMarker alloc]init];
    data1.marker.symbol = @"url(https://www.highcharts.com/samples/graphics/sun.png)";
    spline1.data = @[
                     @7,
                     @6.9,
                     @9.5,
                     @14.5,
                     @18.2,
                     @21.5,
                     @25.2,
                     data1,
                     @23.3,
                     @18.3,
                     @13.9,
                     @9.6
                     ];
    
    
    HISpline *spline2 = [[HISpline alloc]init];
    spline2.name = @"London";
    spline2.marker = [[HIMarker alloc]init];
    spline2.marker.symbol = @"diamond";
    HIData *data2 = [[HIData alloc]init];
    data2.y = @3.9;
    data2.marker = [[HIMarker alloc]init];
    data2.marker.symbol = @"url(https://www.highcharts.com/samples/graphics/snow.png)";
    spline2.data = @[
                     data2,
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
                     @4.8
                     ];
    
    options.chart = chart;
    options.title = title;
    options.subtitle = subtitle;
    options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
    options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
    options.tooltip = tooltip;
    options.plotOptions = plotoptions;
    options.series = [NSMutableArray arrayWithObjects:spline1, spline2, nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
