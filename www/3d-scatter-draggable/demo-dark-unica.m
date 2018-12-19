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
    chart.renderTo = @"container";
    chart.margin = [NSMutableArray arrayWithObjects:@100, nil];
    chart.type = @"scatter3d";
    chart.options3d = [[HIOptions3d alloc]init];
    chart.options3d.enabled = [[NSNumber alloc] initWithBool:true];
    chart.options3d.alpha = @10;
    chart.options3d.beta = @30;
    chart.options3d.depth = @250;
    chart.options3d.viewDistance = @5;
    chart.options3d.fitToPlot = [[NSNumber alloc] initWithBool:false];
    chart.options3d.frame = [[HIFrame alloc]init];
    chart.options3d.frame.bottom = [[HIBottom alloc]init];
    chart.options3d.frame.bottom.size = @1;
    chart.options3d.frame.bottom.color = [[HIColor alloc]initWithRGBA:0 green:0 blue:0 alpha:0.02];
    chart.options3d.frame.back = [[HIBack alloc]init];
    chart.options3d.frame.back.size = @1;
    chart.options3d.frame.back.color = [[HIColor alloc]initWithRGBA:0 green:0 blue:0 alpha:0.04];
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"Draggable box";
    
    HISubtitle *subtitle = [[HISubtitle alloc]init];
    subtitle.text = @"";
    
    HIXAxis *xaxis = [[HIXAxis alloc]init];
    xaxis.min = @0;
    xaxis.max = @10;
    xaxis.gridLineWidth = @1;
    
    HIYAxis *yaxis = [[HIYAxis alloc]init];
    yaxis.min = @0;
    yaxis.max = @10;
    yaxis.title = [[HITitle alloc]init];
    
    HILegend *legend = [[HILegend alloc]init];
    legend.enabled = [[NSNumber alloc] initWithBool:false];
    
    HIScatter3d *scatter = [[HIScatter3d alloc]init];
    scatter.name = @"Reading";
    scatter.data = [NSMutableArray arrayWithObjects:@[
                                                      @1,
                                                      @6,
                                                      @5
                                                      ],
                    @[
                      @8,
                      @7,
                      @9
                      ],
                    @[
                      @1,
                      @3,
                      @4
                      ],
                    @[
                      @4,
                      @6,
                      @8
                      ],
                    @[
                      @5,
                      @7,
                      @7
                      ],
                    @[
                      @6,
                      @9,
                      @6
                      ],
                    @[
                      @7,
                      @0,
                      @5
                      ],
                    @[
                      @2,
                      @3,
                      @3
                      ],
                    @[
                      @3,
                      @9,
                      @8
                      ],
                    @[
                      @3,
                      @6,
                      @5
                      ],
                    @[
                      @4,
                      @9,
                      @4
                      ],
                    @[
                      @2,
                      @3,
                      @3
                      ],
                    @[
                      @6,
                      @9,
                      @9
                      ],
                    @[
                      @0,
                      @7,
                      @0
                      ],
                    @[
                      @7,
                      @7,
                      @9
                      ],
                    @[
                      @7,
                      @2,
                      @9
                      ],
                    @[
                      @0,
                      @6,
                      @2
                      ],
                    @[
                      @4,
                      @6,
                      @7
                      ],
                    @[
                      @3,
                      @7,
                      @7
                      ],
                    @[
                      @0,
                      @1,
                      @7
                      ],
                    @[
                      @2,
                      @8,
                      @6
                      ],
                    @[
                      @2,
                      @3,
                      @7
                      ],
                    @[
                      @6,
                      @4,
                      @8
                      ],
                    @[
                      @3,
                      @5,
                      @9
                      ],
                    @[
                      @7,
                      @9,
                      @5
                      ],
                    @[
                      @3,
                      @1,
                      @7
                      ],
                    @[
                      @4,
                      @4,
                      @2
                      ],
                    @[
                      @3,
                      @6,
                      @2
                      ],
                    @[
                      @3,
                      @1,
                      @6
                      ],
                    @[
                      @6,
                      @8,
                      @5
                      ],
                    @[
                      @6,
                      @6,
                      @7
                      ],
                    @[
                      @4,
                      @1,
                      @1
                      ],
                    @[
                      @7,
                      @2,
                      @7
                      ],
                    @[
                      @7,
                      @7,
                      @0
                      ],
                    @[
                      @8,
                      @8,
                      @9
                      ],
                    @[
                      @9,
                      @4,
                      @1
                      ],
                    @[
                      @8,
                      @3,
                      @4
                      ],
                    @[
                      @9,
                      @8,
                      @9
                      ],
                    @[
                      @3,
                      @5,
                      @3
                      ],
                    @[
                      @0,
                      @2,
                      @4
                      ],
                    @[
                      @6,
                      @0,
                      @2
                      ],
                    @[
                      @2,
                      @1,
                      @3
                      ],
                    @[
                      @5,
                      @8,
                      @9
                      ],
                    @[
                      @2,
                      @1,
                      @1
                      ],
                    @[
                      @9,
                      @7,
                      @6
                      ],
                    @[
                      @3,
                      @0,
                      @2
                      ],
                    @[
                      @9,
                      @9,
                      @0
                      ],
                    @[
                      @3,
                      @4,
                      @8
                      ],
                    @[
                      @2,
                      @6,
                      @1
                      ],
                    @[
                      @8,
                      @9,
                      @2
                      ],
                    @[
                      @7,
                      @6,
                      @5
                      ],
                    @[
                      @6,
                      @3,
                      @1
                      ],
                    @[
                      @9,
                      @3,
                      @1
                      ],
                    @[
                      @8,
                      @9,
                      @3
                      ],
                    @[
                      @9,
                      @1,
                      @0
                      ],
                    @[
                      @3,
                      @8,
                      @7
                      ],
                    @[
                      @8,
                      @0,
                      @0
                      ],
                    @[
                      @4,
                      @9,
                      @7
                      ],
                    @[
                      @8,
                      @6,
                      @2
                      ],
                    @[
                      @4,
                      @3,
                      @0
                      ],
                    @[
                      @2,
                      @3,
                      @5
                      ],
                    @[
                      @9,
                      @1,
                      @4
                      ],
                    @[
                      @1,
                      @1,
                      @4
                      ],
                    @[
                      @6,
                      @0,
                      @2
                      ],
                    @[
                      @6,
                      @1,
                      @6
                      ],
                    @[
                      @3,
                      @8,
                      @8
                      ],
                    @[
                      @8,
                      @8,
                      @7
                      ],
                    @[
                      @5,
                      @5,
                      @0
                      ],
                    @[
                      @3,
                      @9,
                      @6
                      ],
                    @[
                      @5,
                      @4,
                      @3
                      ],
                    @[
                      @6,
                      @8,
                      @3
                      ],
                    @[
                      @0,
                      @1,
                      @5
                      ],
                    @[
                      @6,
                      @7,
                      @3
                      ],
                    @[
                      @8,
                      @3,
                      @2
                      ],
                    @[
                      @3,
                      @8,
                      @3
                      ],
                    @[
                      @2,
                      @1,
                      @6
                      ],
                    @[
                      @4,
                      @6,
                      @7
                      ],
                    @[
                      @8,
                      @9,
                      @9
                      ],
                    @[
                      @5,
                      @4,
                      @2
                      ],
                    @[
                      @6,
                      @1,
                      @3
                      ],
                    @[
                      @6,
                      @9,
                      @5
                      ],
                    @[
                      @4,
                      @8,
                      @2
                      ],
                    @[
                      @9,
                      @7,
                      @4
                      ],
                    @[
                      @5,
                      @4,
                      @2
                      ],
                    @[
                      @9,
                      @6,
                      @1
                      ],
                    @[
                      @2,
                      @7,
                      @3
                      ],
                    @[
                      @4,
                      @5,
                      @4
                      ],
                    @[
                      @6,
                      @8,
                      @1
                      ],
                    @[
                      @3,
                      @4,
                      @0
                      ],
                    @[
                      @2,
                      @2,
                      @6
                      ],
                    @[
                      @5,
                      @1,
                      @2
                      ],
                    @[
                      @9,
                      @9,
                      @7
                      ],
                    @[
                      @6,
                      @9,
                      @9
                      ],
                    @[
                      @8,
                      @4,
                      @3
                      ],
                    @[
                      @4,
                      @1,
                      @7
                      ],
                    @[
                      @6,
                      @2,
                      @5
                      ],
                    @[
                      @0,
                      @4,
                      @9
                      ],
                    @[
                      @3,
                      @5,
                      @9
                      ],
                    @[
                      @6,
                      @9,
                      @1
                      ],
                    @[
                      @1,
                      @9,
                      @2
                      ]
                    , nil];
    
    
    options.chart = chart;
    options.title = title;
    options.subtitle = subtitle;
    options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
    options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
    options.legend = legend;
    options.series = [NSMutableArray arrayWithObjects: scatter, nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
