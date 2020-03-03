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
    chart.type = @"funnel3d";
    chart.options3d = [[HIOptions3d alloc] init];
    chart.options3d.enabled = [[NSNumber alloc] initWithBool:true];
    chart.options3d.alpha = @10;
    chart.options3d.depth = @50;
    chart.options3d.viewDistance = @50;
    options.chart = chart;

    HITitle *title = [[HITitle alloc]init];
    title.text = @"Highcharts Funnel3D Chart";
    options.title = title;

    HIPlotOptions *plotoptions = [[HIPlotOptions alloc]init];
    plotoptions.funnel3d = [[HIFunnel3d alloc] init];
    HIDataLabels *dataLabels = [[HIDataLabels alloc] init];
    dataLabels.enabled = [[NSNumber alloc] initWithBool:true];
    dataLabels.format = @"<b>{point.name}</b> ({point.y:,.0f})";
    dataLabels.allowOverlap = [[NSNumber alloc] initWithBool:true];
    dataLabels.y = @10;
    plotoptions.funnel3d.dataLabels = [NSArray arrayWithObjects:dataLabels, nil];
    plotoptions.funnel3d.neckWidth = @"30%";
    plotoptions.funnel3d.neckHeight = @"25%";
    plotoptions.funnel3d.width = @"80%";
    plotoptions.funnel3d.height = @"80%";
    options.plotOptions = plotoptions;

    HIFunnel3d *series = [[HIFunnel3d alloc] init];
    series.name = @"Unique users";
    series.data = [NSArray arrayWithObjects:@[
                    @"Website visits", @15654
                    ],
                    @[
                    @"Downloads", @4064
                    ],
                    @[
                    @"Requested price list", @1987
                    ],
                    @[
                    @"Invoice sent", @976
                    ],
                    @[
                    @"Finalized", @846
                    ],
                    nil];
    options.series = @[series];
    
    chartView.options = options;

    [self.view addSubview:chartView];
}

@end
