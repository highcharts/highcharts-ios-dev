#import <UIKit/UIKit.h>
#import <Highcharts/Highcharts.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HIChartView *chartView = [[HIChartView alloc] initWithFrame:self.view.bounds];

    chartView.theme = @"sand-signika";
    
    HIOptions *options = [[HIOptions alloc]init];
    
    HIData *data = [[HIData alloc] init];
    data.table = @"<table id=\"datatable\"> <thead> <tr> <th></th> <th>Jane</th> <th>John</th> </tr> </thead> <tbody> <tr> <th>Apples</th> <td>3</td> <td>4</td> </tr> <tr> <th>Pears</th> <td>2</td> <td>0</td> </tr> <tr> <th>Plums</th> <td>5</td> <td>11</td> </tr> <tr> <th>Bananas</th> <td>1</td> <td>1</td> </tr> <tr> <th>Oranges</th> <td>2</td> <td>4</td> </tr> </tbody> </table>";
    
    HIChart *chart = [[HIChart alloc]init];
    chart.type = @"column";
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"Data extracted from a HTML table in the page";
    
    HIXAxis *xaxis = [[HIXAxis alloc] init];
    xaxis.categories = [NSMutableArray arrayWithObjects:@"Apples",
                        @"Pears",
                        @"Plums",
                        @"Bananas",
                        @"Oranges", nil];
    
    HIYAxis *yaxis = [[HIYAxis alloc]init];
    yaxis.allowDecimals = [[NSNumber alloc] initWithBool:false];
    yaxis.title = [[HITitle alloc]init];
    yaxis.title.text = @"Units";
    
    HITooltip *tooltip = [[HITooltip alloc] init];
    tooltip.formatter = [[HIFunction alloc] initWithJSFunction:@"function () { return '<b>' + this.series.name + '</b><br/>' + this.point.y + ' ' + this.point.name.toLowerCase(); }"];
    
    HIColumn *column1 = [[HIColumn alloc] init];
    column1.name = @"Jane";
    column1.data = [NSMutableArray arrayWithObjects:
                    @[@"Apples",  @3],
                    @[@"Pears", @2],
                    @[@"Plums", @5],
                    @[@"Bananas", @1],
                    @[@"Oranges", @2]
                    , nil];
    
    HIColumn *column2 = [[HIColumn alloc] init];
    column2.name = @"John";
    column2.data = [NSMutableArray arrayWithObjects:
                    @[@"Apples" , @4],
                    @[@"Pears" , @0],
                    @[@"Plums" , @11],
                    @[@"Bananas" , @1],
                    @[@"Oranges" , @4]
                    , nil];
    
    //options.data = data;
    options.chart = chart;
    options.title = title;
    options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
    options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
    options.tooltip = tooltip;
    options.series = [NSMutableArray arrayWithObjects:column1, column2, nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
