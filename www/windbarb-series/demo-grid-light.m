#import <UIKit/UIKit.h>
#import <Highcharts/Highcharts.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HIChartView *chartView = [[HIChartView alloc] initWithFrame:self.view.bounds];
    chartView.theme = @"grid-light";
    
    chartView.plugins = @[ @"windbarb" ];
    
    HIOptions *options = [[HIOptions alloc] init];
    
    HIChart *chart = [[HIChart alloc] init];
    chart.type = @"windbarb";
    
    HITitle *title = [[HITitle alloc] init];
    title.text = @"Highcharts Wind Barbs";
    
    HIXAxis *xaxis = [[HIXAxis alloc] init];
    xaxis.type = @"datetime";
    xaxis.offset = @40;
    
    HIPlotOptions *plotoptions = [[HIPlotOptions alloc] init];
    plotoptions.series = [[HISeries alloc] init];
    plotoptions.series.pointStart = @1485648000000;
    plotoptions.series.pointInterval = @36e5;
    
    HIWindbarb *windbarb = [[HIWindbarb alloc] init];
    windbarb.name = @"Wind";
    windbarb.color = [[HIColor alloc] initWithHexValue:@"0d233a"];
    windbarb.showInLegend = [[NSNumber alloc] initWithBool:false];
    windbarb.tooltip = [[HITooltip alloc] init];
    windbarb.tooltip.valueSuffix = @" m/s";
    windbarb.data = [NSMutableArray arrayWithObjects:
                     @[@9.8, @177.9],
                     @[@10.1, @177.2],
                     @[@11.3, @179.7],
                     @[@10.9, @175.5],
                     @[@9.3, @159.9],
                     @[@8.8, @159.6],
                     @[@7.8, @162.6],
                     @[@5.6, @186.2],
                     @[@6.8, @146.0],
                     @[@6.4, @139.9],
                     @[@3.1, @180.2],
                     @[@4.3, @177.6],
                     @[@5.3, @191.8],
                     @[@6.3, @173.1],
                     @[@7.7, @140.2],
                     @[@8.5, @136.1],
                     @[@9.4, @142.9],
                     @[@10.0, @140.4],
                     @[@5.3, @142.1],
                     @[@3.8, @141.0],
                     @[@3.3, @116.5],
                     @[@1.5, @327.5],
                     @[@0.1, @1.1],
                     @[@1.2, @11.1],
                     nil];
    
    HIArea *area = [[HIArea alloc] init];
    area.keys = @[@"y", @"rotation"];
    area.data = [NSMutableArray arrayWithObjects:
                 @[@9.8, @177.9],
                 @[@10.1, @177.2],
                 @[@11.3, @179.7],
                 @[@10.9, @175.5],
                 @[@9.3, @159.9],
                 @[@8.8, @159.6],
                 @[@7.8, @162.6],
                 @[@5.6, @186.2],
                 @[@6.8, @146.0],
                 @[@6.4, @139.9],
                 @[@3.1, @180.2],
                 @[@4.3, @177.6],
                 @[@5.3, @191.8],
                 @[@6.3, @173.1],
                 @[@7.7, @140.2],
                 @[@8.5, @136.1],
                 @[@9.4, @142.9],
                 @[@10.0, @140.4],
                 @[@5.3, @142.1],
                 @[@3.8, @141.0],
                 @[@3.3, @116.5],
                 @[@1.5, @327.5],
                 @[@0.1, @1.1],
                 @[@1.2, @11.1],
                 nil];
    area.color = [[HIColor alloc] initWithHexValue:@"2f7ed8"];
    area.fillColor = [[HIColor alloc] initWithLinearGradient:@{ @"x1": @0, @"x2": @0, @"y1": @0, @"y2": @1 } stops:@[
                                                                                                                     @[@0, @"#2f7ed8"],
                                                                                                                     @[@1, @"rgba(47, 126, 216, 0.25)"]
                                                                                                                     ]];
    area.name = @"Wind speed";
    area.tooltip = [[HITooltip alloc] init];
    area.tooltip.valueSuffix = @" m/s";
    
    options.title = title;
    options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
    options.plotOptions = plotoptions;
    options.series = [NSMutableArray arrayWithObjects:windbarb, area, nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
