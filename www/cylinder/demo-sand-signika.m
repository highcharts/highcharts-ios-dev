#import <UIKit/UIKit.h>
#import <Highcharts/Highcharts.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HIChartView *chartView = [[HIChartView alloc] initWithFrame:self.view.bounds];

    chartView.theme = @"sand-signika";

    chartView.plugins = @[ @"cylinder" ];

    HIOptions *options = [[HIOptions alloc]init];
    
    HIChart *chart = [[HIChart alloc]init];
    chart.type = @"cylinder";
    chart.options3d = [[HIOptions3d alloc] init];
    chart.options3d.enabled = [[NSNumber alloc] initWithBool:true];
    chart.options3d.alpha = @15;
    chart.options3d.beta = @15;
    chart.options3d.depth = @50;
    chart.options3d.viewDistance = @25;
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"Highcharts Cylinder Chart";
    
    HIPlotOptions *plotoptions = [[HIPlotOptions alloc]init];
    plotoptions.cylinder = [[HICylinder alloc] init];
    plotoptions.cylinder.depth = @25;
    plotoptions.cylinder.colorByPoint = [[NSNumber alloc] initWithBool:true];

    HICylinder *cylinder = [[HICylinder alloc] init];
    cylinder.data = [[NSArray alloc] initWithObjects:@29.9, @71.5, @106.4, @129.2, @144.0, @176.0, @135.6, @148.5, @216.4, @194.1, @95.6, @54.4, nil];
    cylinder.name = @"Cylinders";
    cylinder.showInLegend = [[NSNumber alloc] initWithBool:false];

    options.chart = chart;
    options.title = title;
    options.plotOptions = plotoptions;
    options.series = [NSMutableArray arrayWithObjects:cylinder, nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
