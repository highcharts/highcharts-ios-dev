#import <UIKit/UIKit.h>
#import <Highcharts/Highcharts.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HIGChartView *chartView = [[HIGChartView alloc] initWithFrame:self.view.bounds];

    chartView.theme = @"dark-unica";
    
    HIOptions *options = [[HIOptions alloc] init];
    
    HIChart *chart = [[HIChart alloc] init];
    chart.type = @"bubble";
    chart.plotBorderWidth = @1;
    chart.zoomType = @"xy";
    
    HITitle *title = [[HITitle alloc] init];
    title.text = @"Highcharts bubbles with radial gradient fill";
    
    HIXAxis *xaxis = [[HIXAxis alloc] init];
    xaxis.gridLineWidth = @1;
    
    HIYAxis *yaxis = [[HIYAxis alloc] init];
    yaxis.startOnTick = @false;
    yaxis.endOnTick = @false;
    
    HIBubble *bubble1 = [[HIBubble alloc] init];
    bubble1.data = [NSMutableArray arrayWithObjects:@[@9, @81, @63],
                    @[@98, @5, @89],
                    @[@51, @50, @73],
                    @[@41, @22, @14],
                    @[@58, @24, @20],
                    @[@78, @37, @34],
                    @[@55, @56, @53],
                    @[@18, @45, @70],
                    @[@42, @44, @28],
                    @[@3, @52, @59],
                    @[@31, @18, @97],
                    @[@79, @91, @63],
                    @[@93, @23, @23],
                    @[@44, @83, @22], nil];
    bubble1.marker = [[HIBubbleMarker alloc] init];
    bubble1.marker.fillColor = [[HIColor alloc] initWithRadialGradient:[[NSDictionary alloc] initWithObjectsAndKeys:@0.4, @"cx", @0.3, @"cy", @0.7, @"r", nil] stops:@[
                                                                                                                                                                       @[@0, @"rgba(255,255,255,0.5)"],
                                                                                                                                                                       @[@1, @"rgba(124,181,236,0.5)"]
                                                                                                                                                                       ]];
    
    HIBubble *bubble2 = [[HIBubble alloc] init];
    bubble2.data = [NSMutableArray arrayWithObjects:@[@42, @38, @20],
                    @[@6, @18, @1],
                    @[@1, @93, @55],
                    @[@57, @2, @90],
                    @[@80, @76, @22],
                    @[@11, @74, @96],
                    @[@88, @56, @10],
                    @[@30, @47, @49],
                    @[@57, @62, @98],
                    @[@4, @16, @16],
                    @[@46, @10, @11],
                    @[@22, @87, @89],
                    @[@57, @91, @82],
                    @[@45, @15, @98], nil];
    bubble2.marker = [[HIBubbleMarker alloc] init];
    bubble2.marker.fillColor = [[HIColor alloc] initWithRadialGradient:[[NSDictionary alloc] initWithObjectsAndKeys:@0.4, @"cx", @0.3, @"cy", @0.7, @"r", nil] stops:@[
                                                                                                                                                                       @[@0, @"rgba(255,255,255,0.5)"],
                                                                                                                                                                       @[@1, @"rgba(67,67,72,0.5)"]
                                                                                                                                                                       ]];
    
    options.chart = chart;
    options.title = title;
    options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
    options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
    options.series = [NSMutableArray arrayWithObjects:bubble1, bubble2, nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end