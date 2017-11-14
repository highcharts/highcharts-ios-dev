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
    
    HIChart *chart = [[HIChart alloc]init];
    chart.type = @"pyramid";
    chart.marginRight = @100;
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"Sales pyramid";
    title.x = @-50;
    
    HILegend *legend = [[HILegend alloc]init];
    legend.enabled = [[NSNumber alloc] initWithBool:true];
    
    HIPlotOptions *plotoptions = [[HIPlotOptions alloc]init];
    plotoptions.pyramid = [[HIPyramid alloc]init];
    plotoptions.pyramid.dataLabels = [[HIDataLabels alloc]init];
    plotoptions.pyramid.dataLabels.enabled = [[NSNumber alloc] initWithBool:true];
    plotoptions.pyramid.dataLabels.format = @"<b>{point.name}</b> ({point.y:,.0f})";
    plotoptions.pyramid.dataLabels.color = [[HIColor alloc]initWithName:@"black"];
    plotoptions.pyramid.dataLabels.softConnector = [[NSNumber alloc] initWithBool:true];
    
    HIPyramid *pyramind = [[HIPyramid alloc]init];
    pyramind.name = @"Unique users";
    pyramind.data = @[
                      @[
                          @"Website visits",
                          @15654
                          ],
                      @[
                          @"Downloads",
                          @4064
                          ],
                      @[
                          @"Requested price list",
                          @1987
                          ],
                      @[
                          @"Invoice sent",
                          @976
                          ],
                      @[
                          @"Finalized",
                          @846
                          ]
                      ];
    
    options.chart = chart;
    options.title = title;
    options.legend = legend;
    options.plotOptions = plotoptions;
    options.series = [NSMutableArray arrayWithObjects: pyramind, nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
