#import <UIKit/UIKit.h>
#import <Highcharts/Highcharts.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HIChartView *chartView = [[HIChartView alloc] initWithFrame:self.view.bounds];

    chartView.theme = @"sand-signika";
    
    cHIOptions *options = [[HIOptions alloc]init];
    
    HIChart *chart = [[HIChart alloc]init];
    chart.polar = [[NSNumber alloc] initWithBool:true];
    chart.type = @"column";
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"Wind rose for South Shore Met Station, Oregon";
    
    HISubtitle *subtitle = [[HISubtitle alloc]init];
    subtitle.text = @"Source: or.water.usgs.gov";
    
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
    yaxis.labels.formatter = [[HIFunction alloc] initWithFunction:@"function () { return this.value + '%'; }"];
    yaxis.reversedStacks = [[NSNumber alloc] initWithBool:false];
    
    HITooltip *tooltip = [[HITooltip alloc]init];
    tooltip.valueSuffix = @"%";
    
    HIPlotOptions *plotoptions = [[HIPlotOptions alloc] init];
    plotoptions.series = [[HISeries alloc] init];
    plotoptions.series.stacking = @"normal";
    plotoptions.series.shadow = [[NSNumber alloc] initWithBool:false];
    plotoptions.series.pointPlacement = @"on";
    
    HILegend *legend = [[HILegend alloc]init];
    legend.align = @"right";
    legend.verticalAlign = @"top";
    legend.y = @100;
    legend.layout = @"vertical";
    
    HIData *data = [[HIData alloc] init];
    data.table = @"freq";
    data.startRow = @1;
    data.endRow = @17;
    data.endColumn = @7;
    
    options.chart = chart;
    options.title = title;
    options.subtitle = subtitle;
    options.pane = pane;
    options.tooltip = tooltip;
    options.legend = legend;
    options.plotOptions = plotoptions;
    options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
    options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
    options.data = data;
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
