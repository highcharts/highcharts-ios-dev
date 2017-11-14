#import <UIKit/UIKit.h>
#import <Highcharts/Highcharts.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HIChartView *chartView = [[HIChartView alloc] initWithFrame:self.view.bounds];
    
    HIChart *chart = [[HIChart alloc]init];
    chart.type = @"area";
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"US and USSR nuclear stockpiles";
    
    HISubtitle *subtitle = [[HISubtitle alloc]init];
    subtitle.text = @"Source: <a href=\"http://thebulletin.metapress.com/content/c4120650912x74k7/fulltext.pdf\">thebulletin.metapress.com</a>";
    
    HIXAxis *xaxis = [[HIXAxis alloc]init];
    xaxis.allowDecimals = [[NSNumber alloc] initWithBool:false];
    xaxis.labels = [[HILabels alloc] init];
    xaxis.labels.formatter = [[HIFunction alloc] initWithFunction:@"function () { return this.value; /* clean, unformatted number for year */ }"];
   
    HIYAxis *yaxis = [[HIYAxis alloc]init];
    yaxis.title = [[HITitle alloc]init];
    yaxis.title.text = @"Nuclear weapon states";
    yaxis.labels = [[HILabels alloc] init];
    yaxis.labels.formatter = [[HIFunction alloc] initWithFunction:@"function () { return this.value / 1000 + 'k'; }"];
    
    HITooltip *tooltip = [[HITooltip alloc]init];
    tooltip.pointFormat = @"{series.name} produced <b>{point.y:,.0f}</b><br/>warheads in {point.x}";
    
    HIPlotOptions *plotOptions = [[HIPlotOptions alloc]init];
    plotOptions.area = [[HIArea alloc]init];
    plotOptions.area.pointStart = @1940;
    plotOptions.area.marker = [[HIMarker alloc]init];
    plotOptions.area.marker.enabled = [[NSNumber alloc] initWithBool:false];
    plotOptions.area.marker.symbol = @"circle";
    plotOptions.area.marker.radius = @2;
    plotOptions.area.marker.states = [[HIStates alloc]init];
    plotOptions.area.marker.states.hover = [[HIHover alloc]init];
    plotOptions.area.marker.states.hover.enabled = [[NSNumber alloc] initWithBool:true];
    
    HIArea *series1 = [[HIArea alloc]init];
    series1.name = @"USA";
    series1.data = [NSMutableArray arrayWithObjects:[NSNull null],
                    [NSNull null],
                    [NSNull null],
                    [NSNull null],
                    [NSNull null],
                    @6,
                    @11,
                    @32,
                    @110,
                    @235,
                    @369,
                    @640,
                    @1005,
                    @1436,
                    @2063,
                    @3057,
                    @4618,
                    @6444,
                    @9822,
                    @15468,
                    @20434,
                    @24126,
                    @27387,
                    @29459,
                    @31056,
                    @31982,
                    @32040,
                    @31233,
                    @29224,
                    @27342,
                    @26662,
                    @26956,
                    @27912,
                    @28999,
                    @28965,
                    @27826,
                    @25579,
                    @25722,
                    @24826,
                    @24605,
                    @24304,
                    @23464,
                    @23708,
                    @24099,
                    @24357,
                    @24237,
                    @24401,
                    @24344,
                    @23586,
                    @22380,
                    @21004,
                    @17287,
                    @14747,
                    @13076,
                    @12555,
                    @12144,
                    @11009,
                    @10950,
                    @10871,
                    @10824,
                    @10577,
                    @10527,
                    @10475,
                    @10421,
                    @10358,
                    @10295,
                    @10104, nil];
    
    HIArea *series2 = [[HIArea alloc]init];
    series2.name = @"USSR/Russia";
    series2.data = [NSMutableArray arrayWithObjects:[NSNull null],
                    [NSNull null],
                    [NSNull null],
                    [NSNull null],
                    [NSNull null],
                    [NSNull null],
                    [NSNull null],
                    [NSNull null],
                    [NSNull null],
                    [NSNull null],
                    @5,
                    @25,
                    @50,
                    @120,
                    @150,
                    @200,
                    @426,
                    @660,
                    @869,
                    @1060,
                    @1605,
                    @2471,
                    @3322,
                    @4238,
                    @5221,
                    @6129,
                    @7089,
                    @8339,
                    @9399,
                    @10538,
                    @11643,
                    @13092,
                    @14478,
                    @15915,
                    @17385,
                    @19055,
                    @21205,
                    @23044,
                    @25393,
                    @27935,
                    @30062,
                    @32049,
                    @33952,
                    @35804,
                    @37431,
                    @39197,
                    @45000,
                    @43000,
                    @41000,
                    @39000,
                    @37000,
                    @35000,
                    @33000,
                    @31000,
                    @29000,
                    @27000,
                    @25000,
                    @24000,
                    @23000,
                    @22000,
                    @21000,
                    @20000,
                    @19000,
                    @18000,
                    @18000,
                    @17000,
                    @16000, nil];
    
    HIOptions *options = [[HIOptions alloc]init];
    options.chart = chart;
    options.title = title;
    options.subtitle = subtitle;
    options.xAxis = [NSMutableArray arrayWithObject:xaxis];
    options.yAxis = [NSMutableArray arrayWithObject:yaxis];
    options.tooltip = tooltip;
    options.plotOptions = plotOptions;
    options.series = [NSMutableArray arrayWithObjects:series1, series2, nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
