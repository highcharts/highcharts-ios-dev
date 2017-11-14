#import <UIKit/UIKit.h>
#import <Highcharts/Highcharts.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HIChartView *chartView = [[HIChartView alloc] initWithFrame:self.view.bounds];

    chartView.plugins = @[ @"bullet" ];
    
    HIOptions *options = [[HIOptions alloc]init];
    
    HIChart *chart = [[HIChart alloc]init];
    chart.type = @"bullet";
    chart.inverted = [[NSNumber alloc] initWithBool:true];
    chart.marginLeft = @135;
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"2017 YTD";
    
    HILegend *legend = [[HILegend alloc] init];
    legend.enabled = [[NSNumber alloc] initWithBool:false];
    
    HIXAxis *xaxis = [[HIXAxis alloc]init];
    xaxis.categories = @[@"<span class=\"hc-cat-title\">Revenue</span><br/>U.S. $ (1,000s)"];
    
    HIYAxis *yaxis = [[HIYAxis alloc]init];
    yaxis.gridLineWidth = @0;
    
    HIPlotBands *plotbands1 = [[HIPlotBands alloc] init];
    plotbands1.from = @0;
    plotbands1.to = @150;
    plotbands1.color = [[HIColor alloc] initWithHexValue:@"666"];
    
    HIPlotBands *plotbands2 = [[HIPlotBands alloc] init];
    plotbands2.from = @150;
    plotbands2.to = @250;
    plotbands2.color = [[HIColor alloc] initWithHexValue:@"999"];
    
    HIPlotBands *plotbands3 = [[HIPlotBands alloc] init];
    plotbands3.from = @225;
    plotbands3.to = @9e9;
    plotbands3.color = [[HIColor alloc] initWithHexValue:@"bbb"];
    
    yaxis.plotBands = [NSMutableArray arrayWithObjects:plotbands1, plotbands2, plotbands3, nil];
    yaxis.title = [[HITitle alloc] init];
    
    HIBullet *bullet = [[HIBullet alloc] init];
    bullet.data = @[
                    @{
                        @"y": @275,
                        @"target": @250
                        }
                    ];
    bullet.tooltip = [[HITooltip alloc] init];
    bullet.tooltip.pointFormat = @"<b>{point.y}</b> (with target at {point.target})";
    
    HIPlotOptions *plotoptions = [[HIPlotOptions alloc]init];
    plotoptions.series = [[HISeries alloc] init];
    plotoptions.series.borderWidth = @0;
    plotoptions.series.color = [[HIColor alloc] initWithHexValue:@"000"];
    
    HICredits *credits = [[HICredits alloc] init];
    credits.enabled = [[NSNumber alloc] initWithBool:false];
    
    HIExporting *exporting = [[HIExporting alloc] init];
    exporting.enabled = [[NSNumber alloc] initWithBool:false];
    
    options.chart = chart;
    options.title = title;
    options.legend = legend;
    options.credits = credits;
    options.exporting = exporting;
    options.plotOptions = plotoptions;
    options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
    options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
    options.series = [NSMutableArray arrayWithObjects: bullet, nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
