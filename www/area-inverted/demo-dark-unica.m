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
    
    HIChart *chart = [[HIChart alloc]init];
    chart.type = @"area";
    chart.inverted = [[NSNumber alloc] initWithBool:true];
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"Average fruit consumption during one week";
    
    HISubtitle *subtitle = [[HISubtitle alloc]init];
    subtitle.style = [[HICSSObject alloc] init];
    subtitle.style.position = @"absolute";
//    subtitle.style = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"absolute", @"position", @"0px", @"right", @"10px", @"bottom", nil];
    
    HIXAxis *xaxis = [[HIXAxis alloc]init];
    xaxis.categories = [NSMutableArray arrayWithObjects:@"Monday",
                        @"Tuesday",
                        @"Wednesday",
                        @"Thursday",
                        @"Friday",
                        @"Saturday",
                        @"Sunday", nil];
    
    HIYAxis *yaxis = [[HIYAxis alloc]init];
    yaxis.title = [[HITitle alloc]init];
    yaxis.title.text = @"Number of units";
    yaxis.allowDecimals = [[NSNumber alloc] initWithBool:false];
    yaxis.min = @0;
    
    HILegend *legend = [[HILegend alloc]init];
    legend.layout = @"vertical";
    legend.align = @"right";
    legend.verticalAlign = @"top";
    legend.x = @-150;
    legend.y = @100;
    legend.floating = [[NSNumber alloc] initWithBool:true];
    legend.borderWidth = @1;
    legend.backgroundColor = [[HIColor alloc]initWithHexValue:@"FFFFFF"];
    
    HIPlotOptions *plotoptions = [[HIPlotOptions alloc]init];
    plotoptions.area = [[HIArea alloc]init];
    plotoptions.area.fillOpacity = @0.5;
    
    HIArea *area1 = [[HIArea alloc]init];
    area1.name = @"John";
    area1.data = [NSMutableArray arrayWithObjects:@3,
                  @4,
                  @3,
                  @5,
                  @4,
                  @10,
                  @12, nil];
    
    HIArea *area2 = [[HIArea alloc]init];
    area2.name = @"Jane";
    area2.data = [NSMutableArray arrayWithObjects:@1,
                  @3,
                  @4,
                  @3,
                  @3,
                  @5,
                  @4, nil];
    
    options.chart = chart;
    options.title = title;
    options.subtitle = subtitle;
    options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
    options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
    options.legend = legend;
    options.plotOptions = plotoptions;
    options.series = [NSMutableArray arrayWithObjects: area1, area2, nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
