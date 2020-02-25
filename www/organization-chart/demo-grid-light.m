#import <UIKit/UIKit.h>
#import <Highcharts/Highcharts.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HIChartView *chartView = [[HIChartView alloc] initWithFrame:self.view.bounds];

    chartView.theme = @"grid-light";

    chartView.plugins = @[@"sankey", @"organization"];

    HIOptions *options = [[HIOptions alloc]init];

    HIChart *chart = [[HIChart alloc]init];
    chart.height = @600;
    chart.inverted = [[NSNumber alloc] initWithBool:true];
    options.chart = chart;

    HITitle *title = [[HITitle alloc]init];
    title.text = @"Highcharts Org Chart";
    options.title = title;

    HITooltip *tooltip = [[HITooltip alloc] init];
    tooltip.outside = [[NSNumber alloc] initWithBool:true];
    options.tooltip = tooltip;

    HIExporting *exporting = [[HIExporting alloc] init];
    exporting.allowHTML = [[NSNumber alloc] initWithBool:true];
    exporting.sourceWidth = @800;
    exporting.sourceHeight = @600;
    options.exporting = exporting;

    HIOrganization *series = [[HIOrganization alloc] init];
    series.name = @"Highsoft";
    series.keys = @[@"from", @"to"];
    series.data =   @[
                    @[@"Shareholders", @"Board"],
                    @[@"Board", @"CEO"],
                    @[@"CEO", @"CTO"],
                    @[@"CEO", @"CPO"],
                    @[@"CEO", @"CSO"],
                    @[@"CEO", @"CMO"],
                    @[@"CEO", @"HR"],
                    @[@"CTO", @"Product"],
                    @[@"CTO", @"Web"],
                    @[@"CSO", @"Sales"],
                    @[@"CMO", @"Market"],
                    ];
    HILevels *level1 = [[HILevels alloc] init];
    level1.level = @0;
    level1.color = [[HIColor alloc] initWithName:@"silver"];
    level1.dataLabels = [[HIDataLabels alloc] init];
    level1.dataLabels.color = [[HIColor alloc] initWithName:@"black"];
//    level1.height = @25;

    HILevels *level2 = [[HILevels alloc] init];
    level2.level = @1;
    level2.color = [[HIColor alloc] initWithName:@"silver"];
    level2.dataLabels = [[HIDataLabels alloc] init];
    level2.dataLabels.color = [[HIColor alloc] initWithName:@"black"];
//    level2.height = @25;

    HILevels *level3 = [[HILevels alloc] init];
    level3.level = @2;
    level3.color = [[HIColor alloc] initWithHexValue:@"980104"];

    HILevels *level4 = [[HILevels alloc] init];
    level4.level = @4;
    level4.color = [[HIColor alloc] initWithHexValue:@"359154"];

    series.levels = [NSArray arrayWithObjects:level1, level2, level3, level4, nil];

    HINodes *node1 = [[HINodes alloc] init];
    node1.id = @"Shareholders";

    HINodes *node2 = [[HINodes alloc] init];
    node2.id = @"Board";

    HINodes *node3 = [[HINodes alloc] init];
    node3.id = @"CEO";
    node3.title = @"CEO";
    node3.name = @"Grethe Hjetland";
    node3.image = @"https://wp-assets.highcharts.com/www-highcharts-com/blog/wp-content/uploads/2018/11/12132317/Grethe.jpg";

    HINodes *node4 = [[HINodes alloc] init];
    node4.id = @"HR";
    node4.title = @"HR/CFO";
    node4.name = @"Anne Jorunn Fjærestad";
    node4.color = [[HIColor alloc] initWithHexValue:@"007ad0"];
    node4.image = @"https://wp-assets.highcharts.com/www-highcharts-com/blog/wp-content/uploads/2018/11/12132314/AnneJorunn.jpg";
    node4.column = @3;
    node4.offset = @"75%";

    HINodes *node5 = [[HINodes alloc] init];
    node5.id = @"CTO";
    node5.title = @"CTO";
    node5.name = @"Christer Vasseng";
    node5.image = @"https://wp-assets.highcharts.com/www-highcharts-com/blog/wp-content/uploads/2018/11/12140620/Christer.jpg";
    node5.column = @4;
    node5.layout = @"hanging";

    HINodes *node6 = [[HINodes alloc] init];
    node6.id = @"CPO";
    node6.title = @"CPO";
    node6.name = @"Torstein Hønsi";
    node6.image = @"https://wp-assets.highcharts.com/www-highcharts-com/blog/wp-content/uploads/2018/11/12131849/Torstein1.jpg";
    node6.column = @4;

    HINodes *node7 = [[HINodes alloc] init];
    node7.id = @"CSO";
    node7.title = @"CSO";
    node7.name = @"Anita Nesse";
    node7.image = @"https://wp-assets.highcharts.com/www-highcharts-com/blog/wp-content/uploads/2018/11/12132313/Anita.jpg";
    node7.column = @4;
    node7.layout = @"hanging";

    HINodes *node8 = [[HINodes alloc] init];
    node8.id = @"CMO";
    node8.title = @"CMO";
    node8.name = @"Vidar Brekke";
    node8.image = @"https://wp-assets.highcharts.com/www-highcharts-com/blog/wp-content/uploads/2018/11/13105551/Vidar.jpg";
    node8.column = @4;
    node8.layout = @"hanging";

    HINodes *node9 = [[HINodes alloc] init];
    node9.id = @"Product";
    node9.name = @"Product developers";

    HINodes *node10 = [[HINodes alloc] init];
    node10.id = @"Web";
    node10.name = @"General tech";
    node10.definition = @"Web developers, sys admin";

    HINodes *node11 = [[HINodes alloc] init];
    node11.id = @"Sales";
    node11.name = @"Sales team";

    HINodes *node12 = [[HINodes alloc] init];
    node12.id = @"Market";
    node12.name = @"Marketing team";

    series.nodes = [NSArray arrayWithObjects:node1, node2, node3, node4, node5, node6, node7, node8, node9, node10, node11, node12, nil];

    series.colorByPoint = [[NSNumber alloc] initWithBool:false];
    series.color = [[HIColor alloc] initWithHexValue:@"007ad0"];
    HIDataLabels *dataLabels = [[HIDataLabels alloc] init];
    dataLabels.color = [[HIColor alloc] initWithName:@"white"];
    series.dataLabels = [NSArray arrayWithObjects:dataLabels, nil];
    series.borderColor = [[HIColor alloc] initWithName:@"white"];
    series.nodeWidth = @65;

    options.series = @[series];

    chartView.options = options;

    [self.view addSubview:chartView];
}

@end
