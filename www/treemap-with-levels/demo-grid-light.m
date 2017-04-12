#import <UIKit/UIKit.h>
#import <Highcharts/Highcharts.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HIGChartView *chartView = [[HIGChartView alloc] initWithFrame:self.view.bounds];
    
    chartView.plugins = @[ @"treemap" ];

    chartView.theme = @"grid-light";
    
    HIOptions *options = [[HIOptions alloc]init];
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"Fruit consumption";
    options.title = title;
    
    HITreemap *treemap = [[HITreemap alloc]init];
    treemap.layoutAlgorithm = @"stripes";
    treemap.alternateStartingDirection = @true;
    HITreemapLevels *level = [[HITreemapLevels alloc]init];
    level.level = @1;
    level.layoutAlgorithm = @"sliceAndDice";
    level.dataLabels = @{
                         @"enabled": @true,
                         @"align": @"left",
                         @"verticalAlign": @"top",
                         @"style": @{
                                 @"fontSize": @"15px",
                                 @"fontWeight": @"bold"
                                 }
                         };
    treemap.levels = @[level];
    treemap.data = @[
                     @{
                         @"id": @"A",
                         @"name": @"Apples",
                         @"color": @"#EC2500"
                         },
                     @{
                         @"id": @"B",
                         @"name": @"Bananas",
                         @"color": @"#ECE100"
                         },
                     @{
                         @"id": @"O",
                         @"name": @"Oranges",
                         @"color": @"#EC9800"
                         },
                     @{
                         @"name": @"Anne",
                         @"parent": @"A",
                         @"value": @5
                         },
                     @{
                         @"name": @"Rick",
                         @"parent": @"A",
                         @"value": @3
                         },
                     @{
                         @"name": @"Peter",
                         @"parent": @"A",
                         @"value": @4
                         },
                     @{
                         @"name": @"Anne",
                         @"parent": @"B",
                         @"value": @4
                         },
                     @{
                         @"name": @"Rick",
                         @"parent": @"B",
                         @"value": @10
                         },
                     @{
                         @"name": @"Peter",
                         @"parent": @"B",
                         @"value": @1
                         },
                     @{
                         @"name": @"Anne",
                         @"parent": @"O",
                         @"value": @1
                         },
                     @{
                         @"name": @"Rick",
                         @"parent": @"O",
                         @"value": @3
                         },
                     @{
                         @"name": @"Peter",
                         @"parent": @"O",
                         @"value": @3
                         },
                     @{
                         @"name": @"Susanne",
                         @"parent": @"Kiwi",
                         @"value": @2,
                         @"color": @"#9EDE00"
                         }
                     ];
    
    
    options.series = @[treemap];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
