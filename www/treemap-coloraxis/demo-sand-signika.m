#import <UIKit/UIKit.h>
#import <Highcharts/Highcharts.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HIGChartView *chartView = [[HIGChartView alloc] initWithFrame:self.view.bounds];

    chartView.plugins = @[ @"heatmap", @"treemap" ];

    chartView.theme = @"sand-signika";
    
    HIOptions *options = [[HIOptions alloc]init];
    
    HITreemap *treemap = [[HITreemap alloc]init];
    treemap.layoutAlgorithm = @"squarified";
    HITreemapData *data1 = [[HITreemapData alloc]init];
    data1.name = @"A";
    data1.value = @6;
    data1.colorValue = @1;
    HITreemapData *data2 = [[HITreemapData alloc]init];
    data2.name = @"B";
    data2.value = @6;
    data2.colorValue = @2;
    HITreemapData *data3 = [[HITreemapData alloc]init];
    data3.name = @"C";
    data3.value = @4;
    data3.colorValue = @3;
    HITreemapData *data4 = [[HITreemapData alloc]init];
    data4.name = @"D";
    data4.value = @3;
    data4.colorValue = @4;
    HITreemapData *data5 = [[HITreemapData alloc]init];
    data5.name = @"E";
    data5.value = @2;
    data5.colorValue = @5;
    HITreemapData *data6 = [[HITreemapData alloc]init];
    data6.name = @"F";
    data6.value = @2;
    data6.colorValue = @6;
    HITreemapData *data7 = [[HITreemapData alloc]init];
    data7.name = @"G";
    data7.value = @1;
    data7.colorValue = @7;
    treemap.data = @[data1, data2, data3, data4, data5, data6, data7];
    options.series = @[treemap];
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"Highcharts Treemap";
    options.title = title;
    
    options.additionalOptions = @{@"colorAxis": @{
                                          @"minColor": @"#FFFFFF",
                                          @"maxColor": @"#7cb5ec"
                                          }};
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
