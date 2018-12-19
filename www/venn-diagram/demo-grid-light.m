#import <UIKit/UIKit.h>
#import <Highcharts/Highcharts.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HIChartView *chartView = [[HIChartView alloc] initWithFrame:self.view.bounds];

    chartView.theme = @"grid-light";

    chartView.plugins = @[ @"venn" ];
    
    HIOptions *options = [[HIOptions alloc]init];
    
    HIChart *chart = [[HIChart alloc]init];
    chart.type = @"venn";
    
    HITitle *title = [[HITitle alloc] init];
    title.text = @"The Unattainable Triangle";
    
    HIVenn *venn = [[HIVenn alloc] init];
    venn.type = @"venn";
    venn.name = @"The Unattainable Triangle";
    HIData *data1 = [[HIData alloc] init];
    data1.sets = [NSArray arrayWithObjects:@"Good", nil];
    data1.value = @2;
    HIData *data2 = [[HIData alloc] init];
    data2.sets = [NSArray arrayWithObjects:@"Fast", nil];
    data2.value = @2;
    HIData *data3 = [[HIData alloc] init];
    data3.sets = [NSArray arrayWithObjects:@"Cheap", nil];
    data3.value = @2;
    HIData *data4 = [[HIData alloc] init];
    data4.sets = [NSArray arrayWithObjects:@"Good", @"Fast", nil];
    data4.value = @1;
    data4.name = @"More expensive";
    HIData *data5 = [[HIData alloc] init];
    data5.sets = [NSArray arrayWithObjects:@"Good", @"Cheap", nil];
    data5.value = @1;
    data5.name = @"Will take time to deliver";
    HIData *data6 = [[HIData alloc] init];
    data6.sets = [NSArray arrayWithObjects:@"Fast", @"Cheap", nil];
    data6.value = @1;
    data6.name = @"Not the best quality";
    HIData *data7 = [[HIData alloc] init];
    data7.sets = [NSArray arrayWithObjects:@"Fast", @"Cheap", @"Good", nil];
    data7.value = @1;
    data7.name = @"They\'re dreaming";
    venn.data = [NSArray arrayWithObjects:data1, data2, data3, data4, data5, data6, data7, nil];
    
    options.chart = chart;
    options.title = title;
    options.series = [NSMutableArray arrayWithObjects:venn, nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
