#import <UIKit/UIKit.h>
#import <Highcharts/Highcharts.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HIChartView *chartView = [[HIChartView alloc] initWithFrame:self.view.bounds];

    chartView.theme = @"sand-signika";

    chartView.plugins = @[ @"venn" ];
    
    HIOptions *options = [[HIOptions alloc]init];

    HITitle *title = [[HITitle alloc] init];
    title.text = @"Relationship between Euler and Venn diagrams";
    
    HITooltip *tooltip = [[HITooltip alloc] init];
    tooltip.headerFormat = @"<span style=\"color:{point.color}\">\u2022</span> <span style=\"font-size: 14px\"> {point.point.name}</span><br/>";
    tooltip.pointFormat = @"{point.description}<br><span style=\"font-size: 10px\">Source: Wikipedia</span>";
    
    HIVenn *venn = [[HIVenn alloc] init];
    HIData *data1 = [[HIData alloc] init];
    data1.sets = [NSArray arrayWithObjects:@"A", nil];
    data1.value = @4;
    data1.name = @"Euler diagrams";
    data1.definition = @"An Euler diagram is a diagrammatic means of representing sets and their relationships. Unlike Venn diagrams, which show all possible relations between different sets, the Euler diagram shows only relevant relationships.";
    HIData *data2 = [[HIData alloc] init];
    data2.sets = [NSArray arrayWithObjects:@"B", nil];
    data2.value = @1;
    data2.name = @"Venn diagrams";
    data2.definition = @"In Venn diagrams the curves are overlapped in every possible way, showing all possible relations between the sets. They are thus a special case of Euler diagrams, which do not necessarily show all relations'";
    HIData *data3 = [[HIData alloc] init];
    data3.sets = [NSArray arrayWithObjects:@"A", @"B", nil];
    data3.value = @1;
    venn.data = [NSArray arrayWithObjects:data1, data2, data3, nil];
    
    options.title = title;
    options.tooltip = tooltip;
    options.series = [NSMutableArray arrayWithObjects:venn, nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
