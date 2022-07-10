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
    chart.polar = [[NSNumber alloc] initWithBool:true];
    chart.type = @"column";
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"Wind rose for South Shore Met Station, Oregon";
    title.align = @"left";
    
    HISubtitle *subtitle = [[HISubtitle alloc]init];
    subtitle.text = @"Source: or.water.usgs.gov";
    subtitle.align = @"left";
    
    HIPane *pane = [[HIPane alloc]init];
    pane.size = @"85%";
    
    HIXAxis *xaxis = [[HIXAxis alloc]init];
    xaxis.tickmarkPlacement = @"on";
    
    HIYAxis *yaxis = [[HIYAxis alloc]init];
    yaxis.min = @0;
    yaxis.endOnTick = [[NSNumber alloc] initWithBool:false];
    yaxis.showLastLabel = [[NSNumber alloc] initWithBool:true];
    yaxis.title = [[HITitle alloc] init];
    yaxis.title.text = @"Frequency (%)";
    yaxis.labels = [[HILabels alloc] init];
    yaxis.labels.formatter = [[HIFunction alloc] initWithJSFunction:@"function () { return this.value + '%'; }"];
    yaxis.reversedStacks = [[NSNumber alloc] initWithBool:false];
    
    HITooltip *tooltip = [[HITooltip alloc]init];
    tooltip.valueSuffix = @"%";
    
    HIPlotOptions *plotoptions = [[HIPlotOptions alloc] init];
    plotoptions.series = [[HISeries alloc] init];
    plotoptions.series.stacking = @"normal";
    plotoptions.series.shadow = [[HIShadowOptionsObject alloc] init];
    plotoptions.series.shadow.opacity = @0;
    // plotoptions.series.groupPadding = @0;
    plotoptions.series.pointPlacement = @"on";
    
    HILegend *legend = [[HILegend alloc]init];
    legend.align = @"right";
    legend.verticalAlign = @"top";
    legend.y = @100;
    legend.layout = @"vertical";
    
    HIColumn *column1 = [[HIColumn alloc] init];
    column1.turboThreshold = @0;
    column1.name = @"&lt; 0.5 m/s";
    column1.data = @[
      @[@"N", @1.81],
      @[@"NNE", @0.62],
      @[@"NE", @0.82],
      @[@"ENE", @0.59],
      @[@"E", @0.62],
      @[@"ESE", @1.22],
      @[@"SE", @1.61],
      @[@"SSE", @2.04],
      @[@"S", @2.66],
      @[@"SSW", @2.96],
      @[@"SW", @2.53],
      @[@"WSW", @1.97],
      @[@"W", @1.64],
      @[@"WNW", @1.32],
      @[@"NW", @1.58],
      @[@"NNW", @1.51]
    ];
    
    HIColumn *column2 = [[HIColumn alloc] init];
    column2.turboThreshold = @0;
    column2.name = @"0.5-2 m/s";
    column2.data = @[
      @[@"N", @1.78],
      @[@"NNE", @1.09],
      @[@"NE", @0.82],
      @[@"ENE", @1.22],
      @[@"E", @2.2],
      @[@"ESE", @2.01],
      @[@"SE", @3.06],
      @[@"SSE", @3.42],
      @[@"S", @4.74],
      @[@"SSW", @4.14],
      @[@"SW", @4.01],
      @[@"WSW", @2.66],
      @[@"W", @1.71],
      @[@"WNW", @2.4],
      @[@"NW", @4.28],
      @[@"NNW", @5]
    ];
    
    HIColumn *column3 = [[HIColumn alloc] init];
    column3.turboThreshold = @0;
    column3.name = @"2-4 m/s";
    column3.data = @[
      @[@"N", @0.16],
      @[@"NNE", @0],
      @[@"NE", @0.07],
      @[@"ENE", @0.07],
      @[@"E", @0.49],
      @[@"ESE", @1.55],
      @[@"SE", @2.37],
      @[@"SSE", @1.97],
      @[@"S", @0.43],
      @[@"SSW", @0.26],
      @[@"SW", @1.22],
      @[@"WSW", @1.97],
      @[@"W", @0.92],
      @[@"WNW", @0.99],
      @[@"NW", @1.28],
      @[@"NNW", @1.32]
    ];
    
    HIColumn *column4 = [[HIColumn alloc] init];
    column4.turboThreshold = @0;
    column4.name = @"4-6 m/s";
    column4.data = @[
      @[@"N", @0],
      @[@"NNE", @0],
      @[@"NE", @0],
      @[@"ENE", @0],
      @[@"E", @0],
      @[@"ESE", @0.3],
      @[@"SE", @2.14],
      @[@"SSE", @0.86],
      @[@"S", @0],
      @[@"SSW", @0],
      @[@"SW", @0.49],
      @[@"WSW", @0.79],
      @[@"W", @1.45],
      @[@"WNW", @1.61],
      @[@"NW", @0.76],
      @[@"NNW", @0.13]
    ];
    
    HIColumn *column5 = [[HIColumn alloc] init];
    column5.turboThreshold = @0;
    column5.name = @"6-8 m/s";
    column5.data = @[
      @[@"N", @0],
      @[@"NNE", @0],
      @[@"NE", @0],
      @[@"ENE", @0],
      @[@"E", @0],
      @[@"ESE", @0.13],
      @[@"SE", @1.74],
      @[@"SSE", @0.53],
      @[@"S", @0],
      @[@"SSW", @0],
      @[@"SW", @0.13],
      @[@"WSW", @0.3],
      @[@"W", @0.26],
      @[@"WNW", @0.33],
      @[@"NW", @0.66],
      @[@"NNW", @0.23]
    ];
    
    HIColumn *column6 = [[HIColumn alloc] init];
    column6.turboThreshold = @0;
    column6.name = @"8-10 m/s";
    column6.data = @[
      @[@"N", @0],
      @[@"NNE", @0],
      @[@"NE", @0],
      @[@"ENE", @0],
      @[@"E", @0],
      @[@"ESE", @0],
      @[@"SE", @0.39],
      @[@"SSE", @0.49],
      @[@"S", @0],
      @[@"SSW", @0],
      @[@"SW", @0],
      @[@"WSW", @0],
      @[@"W", @0.1],
      @[@"WNW", @0],
      @[@"NW", @0.69],
      @[@"NNW", @0.13]
    ];
    
    HIColumn *column7 = [[HIColumn alloc] init];
    column7.turboThreshold = @0;
    column7.name = @"&gt; 10 m/s";
    column7.data = @[
      @[@"N", @0],
      @[@"NNE", @0],
      @[@"NE", @0],
      @[@"ENE", @0],
      @[@"E", @0],
      @[@"ESE", @0],
      @[@"SE", @0.13],
      @[@"SSE", @0],
      @[@"S", @0],
      @[@"SSW", @0],
      @[@"SW", @0],
      @[@"WSW", @0],
      @[@"W", @0],
      @[@"WNW", @0],
      @[@"NW", @0.03],
      @[@"NNW", @0.07]
    ];
    
    options.chart = chart;
    options.title = title;
    options.subtitle = subtitle;
    options.pane = pane;
    options.tooltip = tooltip;
    options.legend = legend;
    options.plotOptions = plotoptions;
    options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
    options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
    options.series = [NSMutableArray arrayWithObjects:column1, column2, column3, column4, column5, column6, column7, nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
