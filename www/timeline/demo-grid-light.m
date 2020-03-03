#import <UIKit/UIKit.h>
#import <Highcharts/Highcharts.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HIChartView *chartView = [[HIChartView alloc] initWithFrame:self.view.bounds];

    chartView.theme = @"grid-light";

    chartView.plugins = @[@"timeline"];

    HIOptions *options = [[HIOptions alloc]init];

    options.colors = [NSArray arrayWithObjects:@"#4185F3", @"#427CDD", @"#406AB2", @"#3E5A8E", @"#3B4A68", @"#363C46", nil];

    HIChart *chart = [[HIChart alloc]init];
    chart.type = @"timeline";
    options.chart = chart;

    HIXAxis *xAxis = [[HIXAxis alloc]init];
    xAxis.visible = [[NSNumber alloc] initWithBool:false];
    options.xAxis = [NSArray arrayWithObjects:xAxis, nil];

    HIYAxis *yAxis = [[HIYAxis alloc]init];
    yAxis.visible = [[NSNumber alloc] initWithBool:false];
    options.yAxis = [NSArray arrayWithObjects:yAxis, nil];

    HITitle *title = [[HITitle alloc]init];
    title.text = @"Timeline of Space Exploration";
    options.title = title;

    HISubtitle *subtitle = [[HISubtitle alloc]init];
    subtitle.text = @"Info source: <a href=\"https://en.wikipedia.org/wiki/Timeline_of_space_exploration\">www.wikipedia.org</a>";
    options.subtitle = subtitle;

    HITimeline *series = [[HITimeline alloc] init];

    HIData *data1 = [[HIData alloc] init];
    data1.name = @"First dogs";
    data1.label = @"1951: First dogs in space";
    data1.definition = @"22 July 1951 First dogs in space (Dezik and Tsygan) ";

    HIData *data2 = [[HIData alloc] init];
    data2.name = @"Sputnik 1";
    data2.label = @"1957: First artificial satellite";
    data2.definition = @"4 October 1957 First artificial satellite. First signals from space.";

    HIData *data3 = [[HIData alloc] init];
    data3.name = @"First human spaceflight";
    data3.label = @"1961: First human spaceflight (Yuri Gagarin)";
    data3.definition = @"First human spaceflight (Yuri Gagarin), and the first human-crewed orbital flight";

    HIData *data4 = [[HIData alloc] init];
    data4.name = @"First human on the Moon";
    data4.label = @"1969: First human on the Moon";
    data4.definition = @"First human on the Moon, and first space launch from a celestial body other than the Earth. First sample return from the Moon";

    HIData *data5 = [[HIData alloc] init];
    data5.name = @"First space station";
    data5.label = @"1971: First space station";
    data5.definition = @"Salyut 1 was the first space station of any kind, launched into low Earth orbit by the Soviet Union on April 19, 1971.";

    HIData *data6 = [[HIData alloc] init];
    data6.name = @"Apollo–Soyuz Test Project";
    data6.label = @"1975: First multinational manned mission";
    data6.definition = @"The mission included both joint and separate scientific experiments, and provided useful engineering experience for future joint US–Russian space flights, such as the Shuttle–Mir Program and the International Space Station.";
    series.data = [NSArray arrayWithObjects:data1, data2, data3, data4, data5, data6, nil];

    options.series = [NSArray arrayWithObjects:series, nil];

    chartView.options = options;

    [self.view addSubview:chartView];
}

@end
