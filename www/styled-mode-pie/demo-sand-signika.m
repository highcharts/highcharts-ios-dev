#import <UIKit/UIKit.h>
#import <Highcharts/Highcharts.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HIChartView *chartView = [[HIChartView alloc] initWithFrame:self.view.bounds];

    chartView.theme = @"sand-signika";
    
    HIOptions *options = [[HIOptions alloc] init];
    
    HITitle *title = [[HITitle alloc] init];
    title.text = @"Pie point CSS";
    
    HIXAxis *xaxis = [[HIXAxis alloc] init];
    xaxis.categories = @[@"Jan", @"Feb", @"Mar", @"Apr", @"May", @"Jun", @"Jul", @"Aug", @"Sep", @"Oct", @"Nov", @"Dec"];
    
    HIPie *series1 = [[HIPie alloc] init];
    series1.allowPointSelect = [[NSNumber alloc] initWithBool:true];
    series1.keys = @[@"name", @"y", @"selected", @"sliced"];
    series1.showInLegend = [[NSNumber alloc] initWithBool:true];
    series1.data = [NSMutableArray arrayWithObjects:@[@"Apples", @29.9, @false],
                    @[@"Pears", @71.5, @false],
                    @[@"Oranges", @106.4, @false],
                    @[@"Plums", @129.2, @false],
                    @[@"Bananas", @144.0, @false],
                    @[@"Peaches", @176.0, @false],
                    @[@"Prunes", @135.6, @true, @true],
                    @[@"Avocados", @148.5, @false], nil];
    
    options.title = title;
    options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
    options.series = [NSMutableArray arrayWithObjects:series1, nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
