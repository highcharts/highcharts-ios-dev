#import <UIKit/UIKit.h>
#import <Highcharts/Highcharts.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HIGChartView *chartView = [[HIGChartView alloc] initWithFrame:self.view.bounds];

    chartView.theme = @"grid-light";
    
    NSMutableArray *categories = [NSMutableArray arrayWithObjects:@"0-4", @"5-9", @"10-14", @"15-19",
                                  @"20-24", @"25-29", @"30-34", @"35-39", @"40-44",
                                  @"45-49", @"50-54", @"55-59", @"60-64", @"65-69",
                                  @"70-74", @"75-79", @"80-84", @"85-89", @"90-94",
                                  @"95-99", @"100 + ", nil];
    
    HIOptions *options = [[HIOptions alloc] init];
    
    HIChart *chart = [[HIChart alloc] init];
    chart.type = @"bar";
    
    HITitle *title = [[HITitle alloc] init];
    title.text = @"Population pyramid for Germany, 2015";
    
    HISubtitle *subTitle = [[HISubtitle alloc] init];
    subTitle.text = @"Source: <a href=\"http://populationpyramid.net/germany/2015/\">Population Pyramids of the World from 1950 to 2100</a>";
    
    HIXAxis *xaxisLeft = [[HIXAxis alloc] init];
    xaxisLeft.categories = categories;
    xaxisLeft.reversed = @false;
    
    HIXAxisLabels *xaxisLabelsLeft =[[HIXAxisLabels alloc] init];
    xaxisLabelsLeft.step = @1;
    xaxisLeft.labels = xaxisLabelsLeft;
    
    HIXAxis *xaxisRight = [[HIXAxis alloc] init];
    xaxisRight.opposite = @true;
    xaxisRight.reversed = @false;
    xaxisRight.categories = categories;
    xaxisRight.linkedTo = @0;
    
    HIXAxisLabels *xaxisLabelsRight =[[HIXAxisLabels alloc] init];
    xaxisLabelsRight.step = @1;
    xaxisRight.labels = xaxisLabelsRight;
    
    HIYAxis *yaxis = [[HIYAxis alloc] init];
    yaxis.title = [[HIYAxisTitle alloc] init];
    yaxis.title.text = @"";
    yaxis.labels = [[HIYAxisLabels alloc] init];
    yaxis.labels.formatter = @"function () { return Math.abs(this.value) + '%'; }";
    
    HITooltip *tooltip = [[HITooltip alloc] init];
    tooltip.formatter = @"function () { return '<b>' + this.series.name + ', age ' + this.point.category + '</b><br/>' + 'Population: ' + Highcharts.numberFormat(Math.abs(this.point.y), 0); }";
    
    HIPlotOptions *plotoptions = [[HIPlotOptions alloc] init];
    plotoptions.bar = [[HIPlotOptionsBar alloc] init];
    plotoptions.bar.stacking = @"normal";
    
    HIBar *barMale = [[HIBar alloc] init];
    barMale.name = @"Male";
    barMale.data = [NSMutableArray arrayWithObjects:@-2.2,
                    @-2.2,
                    @-2.3,
                    @-2.5,
                    @-2.7,
                    @-3.1,
                    @-3.2,
                    @-3.0,
                    @-3.2,
                    @-4.3,
                    @-4.4,
                    @-3.6,
                    @-3.1,
                    @-2.4,
                    @-2.5,
                    @-2.3,
                    @-1.2,
                    @-0.6,
                    @-0.2,
                    @-0.0,
                    @-0.0, nil];
    
    HIBar *barFemale = [[HIBar alloc] init];
    barFemale.name = @"Female";
    barFemale.data = [NSMutableArray arrayWithObjects:@2.1,
                      @2.0,
                      @2.2,
                      @2.4,
                      @2.6,
                      @3.0,
                      @3.1,
                      @2.9,
                      @3.1,
                      @4.1,
                      @4.3,
                      @3.6,
                      @3.4,
                      @2.6,
                      @2.9,
                      @2.9,
                      @1.8,
                      @1.2,
                      @0.6,
                      @0.1,
                      @0.0, nil];
    
    options.chart = chart;
    options.title = title;
    options.subtitle = subTitle;
    options.xAxis = [NSMutableArray arrayWithObjects:xaxisLeft, xaxisRight, nil];
    options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
    options.tooltip = tooltip;
    options.plotOptions = plotoptions;
    options.series = [NSMutableArray arrayWithObjects:barMale, barFemale, nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
