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
    title.text = @"Highcharts Dependency Wheel";
    options.title = title;

    HIAccessibility *accessibility = [[HIAccessibility alloc]init];
    accessibility.point = [[HIPoint alloc] init];
    accessibility.point.descriptionFormatter = [[HIFunction alloc] initWithJSFunction:@"function (point) { var index = point.index + 1, from = point.from, to = point.to, weight = point.weight; return index + '. From ' + from + ' to ' + to + ': ' + weight + '.'; }"];
    options.accessibility = accessibility;

    HIDependencywheel *series1 = [[HIDependencywheel alloc] init];
    series1.name = @"Dependency wheel series";
    series1.type = @"dependencywheel";
//    series1.size = @"95%";
    HIDataLabels *dataLabels = [[HIDataLabels alloc] init];
    dataLabels.color = [[HIColor alloc] initWithHexValue:@"333"];
    dataLabels.textPath = [[HITextPath alloc] init];
    dataLabels.textPath.enabled = [[NSNumber alloc] initWithBool:true];
    dataLabels.textPath.attributes = [[HISVGAttributes alloc] init];
//    dataLabels.textPath.attributes.dy = @5;
    dataLabels.distance = @10;
    series1.dataLabels = [NSArray arrayWithObjects:dataLabels, nil];
    series1.keys = @[@"from", @"to", @"weight"];
    series1.data = [NSArray arrayWithObjects:
                        @[@"Brazil", @"Portugal", @5],
                        @[@"Brazil", @"France", @1],
                        @[@"Brazil", @"Spain", @1],
                        @[@"Brazil", @"England", @1],
                        @[@"Canada", @"Portugal", @1],
                        @[@"Canada", @"France", @5],
                        @[@"Canada", @"England", @1],
                        @[@"Mexico", @"Portugal", @1],
                        @[@"Mexico", @"France", @1],
                        @[@"Mexico", @"Spain", @5],
                        @[@"Mexico", @"England", @1],
                        @[@"USA", @"Portugal", @1],
                        @[@"USA", @"France", @1],
                        @[@"USA", @"Spain", @1],
                        @[@"USA", @"England", @5],
                        @[@"Portugal", @"Angola", @2],
                        @[@"Portugal", @"Senegal", @1],
                        @[@"Portugal", @"Morocco", @1],
                        @[@"Portugal", @"South Africa", @3],
                        @[@"France", @"Angola", @1],
                        @[@"France", @"Senegal", @3],
                        @[@"France", @"Mali", @3],
                        @[@"France", @"Morocco", @3],
                        @[@"France", @"South Africa", @1],
                        @[@"Spain", @"Senegal", @1],
                        @[@"Spain", @"Morocco", @3],
                        @[@"Spain", @"South Africa", @1],
                        @[@"England", @"Angola", @1],
                        @[@"England", @"Senegal", @1],
                        @[@"England", @"Morocco", @2],
                        @[@"England", @"South Africa", @7],
                        @[@"South Africa", @"China", @5],
                        @[@"South Africa", @"India", @1],
                        @[@"South Africa", @"Japan", @3],
                        @[@"Angola", @"China", @5],
                        @[@"Angola", @"India", @1],
                        @[@"Angola", @"Japan", @3],
                        @[@"Senegal", @"China", @5],
                        @[@"Senegal", @"India", @1],
                        @[@"Senegal", @"Japan", @3],
                        @[@"Mali", @"China", @5],
                        @[@"Mali", @"India", @1],
                        @[@"Mali", @"Japan", @3],
                        @[@"Morocco", @"China", @5],
                        @[@"Morocco", @"India", @1],
                        @[@"Morocco", @"Japan", @3],
                        @[@"Japan", @"Brazil", @1],
                        nil];


    options.series = @[series1];

    chartView.options = options;

    [self.view addSubview:chartView];
}

@end
