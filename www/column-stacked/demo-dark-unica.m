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
    
    HIChart *chart = [[HIChart alloc]init];
    chart.type = @"column";
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"Stacked column chart";
    
    HIXAxis *xaxis = [[HIXAxis alloc]init];
    xaxis.categories = [NSMutableArray arrayWithObjects:@"Apples",
                        @"Oranges",
                        @"Pears",
                        @"Grapes",
                        @"Bananas", nil];
    
    HIYAxis *yaxis = [[HIYAxis alloc]init];
    yaxis.min = @0;
    yaxis.title = [[HITitle alloc]init];
    yaxis.title.text = @"Total fruit consumption";
    yaxis.stackLabels = [[HIStackLabels alloc]init];
    yaxis.stackLabels.enabled = [[NSNumber alloc] initWithBool:true];
    yaxis.stackLabels.style = [[HIStyle alloc] init];
    yaxis.stackLabels.style.fontWeight = @"bold";
    yaxis.stackLabels.style.color = @"gray";
    
    HILegend *legend = [[HILegend alloc]init];
    legend.align = @"right";
    legend.x = @-30;
    legend.verticalAlign = @"top";
    legend.y = @25;
    legend.floating = [[NSNumber alloc] initWithBool:true];
    legend.backgroundColor = [[HIColor alloc]initWithName:@"white"];
    legend.borderColor = [[HIColor alloc]initWithHexValue:@"ccc"];
    legend.borderWidth = @1;
    legend.shadow = [[NSNumber alloc] initWithBool:false];
    
    HITooltip *tooltip = [[HITooltip alloc]init];
    tooltip.pointFormat = @"{series.name}: {point.y}<br/>Total: {point.stackTotal}";
    tooltip.headerFormat = @"<b>{point.x}</b><br/>";
    
    HIPlotOptions *plotoptions = [[HIPlotOptions alloc]init];
    plotoptions.column = [[HIColumn alloc]init];
    plotoptions.column.stacking = @"normal";
    plotoptions.column.dataLabels = [[HIDataLabels alloc]init];
    plotoptions.column.dataLabels.enabled = [[NSNumber alloc] initWithBool:true];
    plotoptions.column.dataLabels.color = [[HIColor alloc]initWithName:@"white"];
    plotoptions.column.dataLabels.style = [[HIStyle alloc] init];
    plotoptions.column.dataLabels.style.textOutline = @"0 0 3px black";
    
    HIColumn *column1 = [[HIColumn alloc]init];
    column1.name = @"John";
    column1.data = [NSMutableArray arrayWithObjects:@5,
                    @3,
                    @4,
                    @7,
                    @2
                    , nil];
    
    HIColumn *column2 = [[HIColumn alloc]init];
    column2.name = @"Jane";
    column2.data = [NSMutableArray arrayWithObjects:@2,
                    @2,
                    @3,
                    @2,
                    @1, nil];
    
    HIColumn *column3 = [[HIColumn alloc]init];
    column3.name = @"Joe";
    column3.data = [NSMutableArray arrayWithObjects:@3,
                    @4,
                    @4,
                    @2,
                    @5, nil];
    
    options.chart = chart;
    options.title = title;
    options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
    options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
    options.legend = legend;
    options.tooltip = tooltip;
    options.plotOptions = plotoptions;
    options.series = [NSMutableArray arrayWithObjects: column1, column2, column3, nil];
    
    chartView.options = options;

    [self.view addSubview:chartView];
}

@end
