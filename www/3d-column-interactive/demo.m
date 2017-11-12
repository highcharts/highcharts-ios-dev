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
    chart.renderTo = @"container";
    chart.type = @"column";
    chart.options3d = [[HIOptions3d alloc]init];
    chart.options3d.enabled = [[NSNumber alloc] initWithBool:true];
    chart.options3d.alpha = @15;
    chart.options3d.beta = @15;
    chart.options3d.depth = @50;
    chart.options3d.viewDistance = @25;
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"Chart rotation demo";
    
    HIPlotOptions *plotoptions = [[HIPlotOptions alloc]init];
    plotoptions.column = [[HIColumn alloc]init];
    plotoptions.column.depth = @25;
    
    HIColumn *column = [[HIColumn alloc]init];
    column.data = [NSMutableArray arrayWithObjects:@29.9,
                   @71.5,
                   @106.4,
                   @129.2,
                   @144,
                   @176,
                   @135.6,
                   @148.5,
                   @216.4,
                   @194.1,
                   @95.6,
                   @54.4, nil];
    
    options.chart = chart;
    options.title = title;
    options.plotOptions = plotoptions;
    options.series = [NSMutableArray arrayWithObjects:column,  nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
