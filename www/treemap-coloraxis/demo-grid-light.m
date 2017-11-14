#import <UIKit/UIKit.h>
#import <Highcharts/Highcharts.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HIChartView *chartView = [[HIChartView alloc] initWithFrame:self.view.bounds];

    chartView.plugins = @[ @"heatmap", @"treemap" ];

    chartView.theme = @"grid-light";
    
    HIOptions *options = [[HIOptions alloc]init];
    
    HITreemap *treemap = [[HITreemap alloc]init];
    treemap.layoutAlgorithm = @"squarified";
    HIData *data1 = [[HIData alloc]init];
    data1.name = @"A";
    data1.value = @6;
    data1.colorValue = @1;
    HIData *data2 = [[HIData alloc]init];
    data2.name = @"B";
    data2.value = @6;
    data2.colorValue = @2;
    HIData *data3 = [[HIData alloc]init];
    data3.name = @"C";
    data3.value = @4;
    data3.colorValue = @3;
    HIData *data4 = [[HIData alloc]init];
    data4.name = @"D";
    data4.value = @3;
    data4.colorValue = @4;
    HIData *data5 = [[HIData alloc]init];
    data5.name = @"E";
    data5.value = @2;
    data5.colorValue = @5;
    HIData *data6 = [[HIData alloc]init];
    data6.name = @"F";
    data6.value = @2;
    data6.colorValue = @6;
    HIData *data7 = [[HIData alloc]init];
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
