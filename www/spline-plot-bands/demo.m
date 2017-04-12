#import <UIKit/UIKit.h>
#import <Highcharts/Highcharts.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HIGChartView *chartView = [[HIGChartView alloc] initWithFrame:self.view.bounds];
    
    HIOptions *options = [[HIOptions alloc]init];
    
    HIChart *chart = [[HIChart alloc]init];
    chart.type = @"spline";
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"Wind speed during two days";
    
    HISubtitle *subtitle = [[HISubtitle alloc]init];
    subtitle.text = @"May 31 and and June 1, 2015 at two locations in Vik i Sogn, Norway";
    
    HIXAxis *xaxis = [[HIXAxis alloc]init];
    xaxis.type = @"datetime";
    xaxis.labels = [[HIXAxisLabels alloc]init];
    xaxis.labels.overflow = @"justify";
    
    HIYAxis *yaxis = [[HIYAxis alloc]init];
    yaxis.title = [[HIYAxisTitle alloc]init];
    yaxis.title.text = @"Wind speed (m/s)";
    yaxis.minorGridLineWidth = @0;
    yaxis.gridLineWidth = @0;
    yaxis.alternateGridColor = [[HIColor alloc]init];
    HIYAxisPlotBands *band1 = [[HIYAxisPlotBands alloc]init];
    band1.from = @0.3;
    band1.to = @1.5;
    band1.color = [[HIColor alloc]initWithRGBA:68 green:170 blue:213 alpha:0.1];
    band1.label = [[HIYAxisPlotBandsLabel alloc]init];
    band1.label.text = @"Light air";
    band1.label.style = @{@"color": @"#606060"};
    HIYAxisPlotBands *band2 = [[HIYAxisPlotBands alloc]init];
    band2.from = @1.5;
    band2.to = @3.3;
    band2.color = [[HIColor alloc]initWithRGBA:0 green:0 blue:0 alpha:0];
    band2.label = [[HIYAxisPlotBandsLabel alloc]init];
    band2.label.text = @"Light breeze";
    band2.label.style = @{@"color": @"#606060"};
    HIYAxisPlotBands *band3 = [[HIYAxisPlotBands alloc]init];
    band3.from = @3.3;
    band3.to = @5.5;
    band3.color = [[HIColor alloc]initWithRGBA:68 green:170 blue:213 alpha:0.1];
    band3.label = [[HIYAxisPlotBandsLabel alloc]init];
    band3.label.text = @"Gentel breeze";
    band3.label.style = @{@"color": @"#606060"};
    HIYAxisPlotBands *band4 = [[HIYAxisPlotBands alloc]init];
    band4.from = @5.5;
    band4.to = @8;
    band4.color = [[HIColor alloc]initWithRGBA:0 green:0 blue:0 alpha:0];
    band4.label = [[HIYAxisPlotBandsLabel alloc]init];
    band4.label.text = @"Moderate breeze";
    band4.label.style = @{@"color": @"#606060"};
    HIYAxisPlotBands *band5 = [[HIYAxisPlotBands alloc]init];
    band5.from = @8;
    band5.to = @11;
    band5.color = [[HIColor alloc]initWithRGBA:68 green:170 blue:213 alpha:0.1];
    band5.label = [[HIYAxisPlotBandsLabel alloc]init];
    band5.label.text = @"Fresh breeze";
    band5.label.style = @{@"color": @"#606060"};
    HIYAxisPlotBands *band6 = [[HIYAxisPlotBands alloc]init];
    band6.from = @11;
    band6.to = @14;
    band6.color = [[HIColor alloc]initWithRGBA:0 green:0 blue:0 alpha:0];
    band6.label = [[HIYAxisPlotBandsLabel alloc]init];
    band6.label.text = @"Strong breeze";
    band6.label.style = @{@"color": @"#606060"};
    HIYAxisPlotBands *band7 = [[HIYAxisPlotBands alloc]init];
    band7.from = @14;
    band7.to = @15;
    band7.color = [[HIColor alloc]initWithRGBA:68 green:170 blue:213 alpha:0.1];
    band7.label = [[HIYAxisPlotBandsLabel alloc]init];
    band7.label.text = @"High wind";
    band7.label.style = @{@"color": @"#606060"};
    yaxis.plotBands = @[band1, band2, band3, band4, band5, band6, band7];
    
    
    HITooltip *tooltip = [[HITooltip alloc]init];
    tooltip.valueSuffix = @" m/s";
    
    HIPlotOptions *plotoptions = [[HIPlotOptions alloc]init];
    plotoptions.spline = [[HIPlotOptionsSpline alloc]init];
    plotoptions.spline.lineWidth = @4;
    HIPlotOptionsSplineStates *state = [[HIPlotOptionsSplineStates alloc]init];
    state.hover = [[HIPlotOptionsSplineStatesHover alloc]init];
    state.hover.lineWidth = @5;
    plotoptions.spline.states = @[state];
    plotoptions.spline.marker = [[HIPlotOptionsSplineMarker alloc]init];
    plotoptions.spline.marker.enabled = @false;
    plotoptions.spline.pointInterval = @3600000;
    plotoptions.spline.pointStart = @1433030400000;
    
    HISpline *spline1 = [[HISpline alloc]init];
    spline1.name = @"Hestavollane";
    spline1.data = @[
                     @0.2,
                     @0.8,
                     @0.8,
                     @0.8,
                     @1,
                     @1.3,
                     @1.5,
                     @2.9,
                     @1.9,
                     @2.6,
                     @1.6,
                     @3,
                     @4,
                     @3.6,
                     @4.5,
                     @4.2,
                     @4.5,
                     @4.5,
                     @4,
                     @3.1,
                     @2.7,
                     @4,
                     @2.7,
                     @2.3,
                     @2.3,
                     @4.1,
                     @7.7,
                     @7.1,
                     @5.6,
                     @6.1,
                     @5.8,
                     @8.6,
                     @7.2,
                     @9,
                     @10.9,
                     @11.5,
                     @11.6,
                     @11.1,
                     @12,
                     @12.3,
                     @10.7,
                     @9.4,
                     @9.8,
                     @9.6,
                     @9.8,
                     @9.5,
                     @8.5,
                     @7.4,
                     @7.6
                     ];
    
    HISpline *spline2 = [[HISpline alloc]init];
    spline2.name = @"Vik";
    spline2.data = @[
                     @0,
                     @0,
                     @0.6,
                     @0.9,
                     @0.8,
                     @0.2,
                     @0,
                     @0,
                     @0,
                     @0.1,
                     @0.6,
                     @0.7,
                     @0.8,
                     @0.6,
                     @0.2,
                     @0,
                     @0.1,
                     @0.3,
                     @0.3,
                     @0,
                     @0.1,
                     @0,
                     @0,
                     @0,
                     @0.2,
                     @0.1,
                     @0,
                     @0.3,
                     @0,
                     @0.1,
                     @0.2,
                     @0.1,
                     @0.3,
                     @0.3,
                     @0,
                     @3.1,
                     @3.1,
                     @2.5,
                     @1.5,
                     @1.9,
                     @2.1,
                     @1,
                     @2.3,
                     @1.9,
                     @1.2,
                     @0.7,
                     @1.3,
                     @0.4,
                     @0.3
                     ];
    
    HINavigation *navigation = [[HINavigation alloc]init];
    navigation.menuItemStyle = @{@"fontSize": @"10px"};
    
    
    
    options.chart = chart;
    options.title = title;
    options.subtitle = subtitle;
    options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
    options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
    options.tooltip = tooltip;
    options.plotOptions = plotoptions;
    options.navigation = navigation;
    options.series = [NSMutableArray arrayWithObjects:spline1, spline2, nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
