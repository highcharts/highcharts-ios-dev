#import <UIKit/UIKit.h>
#import <Highcharts/Highcharts.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HIGChartView *chartView = [[HIGChartView alloc] initWithFrame:self.view.bounds];

    chartView.theme = @"dark-unica";

    chartView.plugins = @[ @"pareto" ];
    
    HIOptions *options = [[HIOptions alloc] init];
    
    HIChart *chart = [[HIChart alloc] init];
    chart.type = @"column";
    chart.renderTo = @"container";
    
    HITitle *title = [[HITitle alloc] init];
    title.text = @"Restaurants Complaints";
    
    HIXAxis *xaxis = [[HIXAxis alloc]init];
    xaxis.categories = @[
                         @"Overpriced",
                         @"Small portions",
                         @"Wait time",
                         @"Food is tasteless",
                         @"No atmosphere",
                         @"Not clean",
                         @"Too noisy",
                         @"Unfriendly staff"];
    
    HIYAxis *yaxis1 = [[HIYAxis alloc] init];
    yaxis1.title = [[HITitle alloc] init];
    yaxis1.title.text = @"";
    
    HIYAxis *yaxis2 = [[HIYAxis alloc] init];
    yaxis2.title = [[HITitle alloc] init];
    yaxis2.title.text = @"";
    yaxis2.minPadding = @0;
    yaxis2.maxPadding = @0;
    yaxis2.max = @100;
    yaxis2.min = @0;
    yaxis2.opposite = [[NSNumber alloc] initWithBool:true];
    yaxis2.labels = [[HILabels alloc] init];
    yaxis2.labels.format = @"{value}%";
    
    HIPareto *pareto = [[HIPareto alloc] init];
    pareto.name = @"Pareto";
    pareto.yAxis = @1;
    pareto.zIndex = @10;
    
    HIColumn *column = [[HIColumn alloc] init];
    column.name = @"Complaints";
    column.zIndex = @2;
    column.data = [NSMutableArray arrayWithObjects:@755, @222, @151, @86, @72, @51, @36, @10, nil];
    
    options.chart = chart;
    options.title = title;
    options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
    options.yAxis = [NSMutableArray arrayWithObjects:yaxis1, yaxis2, nil];
    options.series = [NSMutableArray arrayWithObjects:pareto, column, nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
