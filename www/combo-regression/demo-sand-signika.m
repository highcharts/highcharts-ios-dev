#import <UIKit/UIKit.h>
#import <Highcharts/Highcharts.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HIChartView *chartView = [[HIChartView alloc] initWithFrame:self.view.bounds];

    chartView.theme = @"sand-signika";
    
    HIOptions *options = [[HIOptions alloc]init];
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"Scatter plot with regression line";
    
    HIXAxis *xaxis = [[HIXAxis alloc]init];
    xaxis.min = @-0.5;
    xaxis.max = @5.5;
    
    HIYAxis *yaxis = [[HIYAxis alloc]init];
    yaxis.min = @0;
    
    HILine *line = [[HILine alloc]init];
    line.name = @"Regression Line";
    line.data = [NSMutableArray arrayWithObjects:
                 @[
                   @0,
                   @1.11
                   ],
                 @[
                   @5,
                   @4.51
                   ] , nil];
    line.marker = [[HIMarker alloc]init];
    line.marker.enabled = [[NSNumber alloc] initWithBool:false];
    HIStates *state = [[HIStates alloc]init];
    state.hover = [[HIHover alloc]init];
    state.hover.lineWidth = @0;
    line.states = state;
    line.enableMouseTracking = [[NSNumber alloc] initWithBool:false];
    
    HIScatter *scatter = [[HIScatter alloc]init];
    scatter.name = @"Observations";
    scatter.data = [NSMutableArray arrayWithObjects:@1,
                    @1.5,
                    @2.8,
                    @3.5,
                    @3.9,
                    @4.2, nil];
    scatter.marker = [[HIMarker alloc]init];
    scatter.marker.radius = @4;
    
    options.title = title;
    options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
    options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
    options.series = [NSMutableArray arrayWithObjects: line, scatter, nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
