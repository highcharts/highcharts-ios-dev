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
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"Solar Employment Growth by Sector, 2010-2016";
    
    HISubtitle *subtitle = [[HISubtitle alloc]init];
    subtitle.text = @"Source: thesolarfoundation.com";
    
    HIYAxis *yaxis = [[HIYAxis alloc]init];
    yaxis.title = [[HITitle alloc]init];
    yaxis.title.text = @"Number of Employees";
    
    HILegend *legend = [[HILegend alloc]init];
    legend.layout = @"vertical";
    legend.align = @"right";
    legend.verticalAlign = @"middle";
    
    HIPlotOptions *plotoptions = [[HIPlotOptions alloc] init];
    plotoptions.series = [[HISeries alloc] init];
    plotoptions.series.label = [[HILabel alloc] init];
    plotoptions.series.label.connectorAllowed = [[NSNumber alloc] initWithBool:false];
    plotoptions.series.pointStart = @2010;
    
    HILine *line1 = [[HILine alloc]init];
    line1.name = @"Installation";
    line1.data = [NSMutableArray arrayWithObjects:@43934, @52503, @57177, @69658, @97031, @119931, @137133, @154175, nil];
    
    HILine *line2 = [[HILine alloc]init];
    line2.name = @"Manufacturing";
    line2.data = [NSMutableArray arrayWithObjects:@24916, @24064, @29742, @29851, @32490, @30282, @38121, @40434, nil];
    
    HILine *line3 = [[HILine alloc]init];
    line3.name = @"Sales & Distribution";
    line3.data = [NSMutableArray arrayWithObjects:@11744, @17722, @16005, @19771, @20185, @24377, @32147, @39387, nil];
    
    HILine *line4 = [[HILine alloc]init];
    line4.name = @"Project Development";
    line4.data = [NSMutableArray arrayWithObjects:[NSNull null], [NSNull null], @7988, @12169, @15112, @22452, @34400, @34227, nil];
    
    HILine *line5 = [[HILine alloc]init];
    line5.name = @"Other";
    line5.data = [NSMutableArray arrayWithObjects:@12908, @5948, @8105, @11248, @8989, @11816, @18274, @18111, nil];
    
    HIResponsive *responsive = [[HIResponsive alloc] init];
    
    HIRules *rules1 = [[HIRules alloc] init];
    rules1.condition = [[HICondition alloc] init];
    rules1.condition.maxWidth = @500;
    rules1.chartOptions = @{
                            @"legend" : @{
                                            @"layout": @"horizontal",
                                            @"align": @"center",
                                            @"verticalAlign": @"bottom"
                                        }
                            
                            };
    responsive.rules = [NSMutableArray arrayWithObjects:rules1, nil];
    
    options.title = title;
    options.subtitle = subtitle;
    options.yAxis = [NSMutableArray arrayWithObject:yaxis];
    options.legend = legend;
    options.plotOptions = plotoptions;
    options.series = [NSMutableArray arrayWithObjects:line1, line2, line3, line4, line5, nil];
    options.responsive = responsive;
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
