//
//  ViewController.m
//  Highcharts
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

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
    title.text = @"Snow depth at Vikjafjellet, Norway";
    
    HISubtitle *subtitle = [[HISubtitle alloc]init];
    subtitle.text = @"Irregular time data in Highcharts JS";
    
    HIXAxis *xaxis = [[HIXAxis alloc]init];
    xaxis.type = @"datetime";
    xaxis.dateTimeLabelFormats = @{
                                   @"month": @"%e. %b",
                                   @"year": @"%b"
                                   };
    xaxis.title = [[HIXAxisTitle alloc]init];
    xaxis.title.text = @"Date";
    
    HIYAxis *yaxis = [[HIYAxis alloc]init];
    yaxis.title = [[HIYAxisTitle alloc]init];
    yaxis.title.text = @"Snow depth (m)";
    yaxis.min = @0;
    
    HITooltip *tooltip = [[HITooltip alloc]init];
    tooltip.headerFormat = @"<b>{series.name}</b><br>";
    tooltip.pointFormat = @"{point.x:%e. %b}: {point.y:.2f} m";
    
    HIPlotOptions *plotoptions = [[HIPlotOptions alloc]init];
    plotoptions.spline = [[HIPlotOptionsSpline alloc]init];
    plotoptions.spline.marker = [[HIPlotOptionsSplineMarker alloc]init];
    plotoptions.spline.marker.enabled = @true;
    
    HISpline *spline1 = [[HISpline alloc]init];
    spline1.name = @"Winter 2012-2013";
    spline1.data = @[
                     @[
                         @25315200000,
                         @0
                         ],
                     @[
                         @26524800000,
                         @0.28
                         ],
                     @[
                         @26956800000,
                         @0.25
                         ],
                     @[
                         @28512000000,
                         @0.2
                         ],
                     @[
                         @28944000000,
                         @0.28
                         ],
                     @[
                         @31017600000,
                         @0.28
                         ],
                     @[
                         @31276800000,
                         @0.47
                         ],
                     @[
                         @32400000000,
                         @0.79
                         ],
                     @[
                         @33696000000,
                         @0.72
                         ],
                     @[
                         @34387200000,
                         @1.02
                         ],
                     @[
                         @35078400000,
                         @1.12
                         ],
                     @[
                         @36288000000,
                         @1.2
                         ],
                     @[
                         @37497600000,
                         @1.18
                         ],
                     @[
                         @40176000000,
                         @1.19
                         ],
                     @[
                         @41904000000,
                         @1.85
                         ],
                     @[
                         @42249600000,
                         @2.22
                         ],
                     @[
                         @43459200000,
                         @1.15
                         ],
                     @[
                         @44755200000,
                         @0
                         ]
                     ];
    
    HISpline *spline2 = [[HISpline alloc]init];
    spline2.name = @"Winter 2013-2014";
    spline2.data = @[
                     @[
                         @26006400000,
                         @0
                         ],
                     @[
                         @26956800000,
                         @0.4
                         ],
                     @[
                         @28857600000,
                         @0.25
                         ],
                     @[
                         @31536000000,
                         @1.66
                         ],
                     @[
                         @32313600000,
                         @1.8
                         ],
                     @[
                         @35769600000,
                         @1.76
                         ],
                     @[
                         @38707200000,
                         @2.62
                         ],
                     @[
                         @40867200000,
                         @2.41
                         ],
                     @[
                         @41817600000,
                         @2.05
                         ],
                     @[
                         @43027200000,
                         @1.7
                         ],
                     @[
                         @43891200000,
                         @1.1
                         ],
                     @[
                         @45360000000,
                         @0
                         ]
                     ];
    
    HISpline *spline3 = [[HISpline alloc]init];
    spline3.name = @"Winter 2014-2015";
    spline3.data = @[
                     @[
                         @28339200000,
                         @0
                         ],
                     @[
                         @29289600000,
                         @0.25
                         ],
                     @[
                         @30499200000,
                         @1.41
                         ],
                     @[
                         @30931200000,
                         @1.64
                         ],
                     @[
                         @31795200000,
                         @1.6
                         ],
                     @[
                         @32918400000,
                         @2.55
                         ],
                     @[
                         @33523200000,
                         @2.62
                         ],
                     @[
                         @34473600000,
                         @2.5
                         ],
                     @[
                         @35337600000,
                         @2.42
                         ],
                     @[
                         @37065600000,
                         @2.74
                         ],
                     @[
                         @37756800000,
                         @2.62
                         ],
                     @[
                         @38620800000,
                         @2.6
                         ],
                     @[
                         @39398400000,
                         @2.81
                         ],
                     @[
                         @40262400000,
                         @2.63
                         ],
                     @[
                         @41644800000,
                         @2.77
                         ],
                     @[
                         @42249600000,
                         @2.68
                         ],
                     @[
                         @42681600000,
                         @2.56
                         ],
                     @[
                         @43113600000,
                         @2.39
                         ],
                     @[
                         @43545600000,
                         @2.3
                         ],
                     @[
                         @44928000000,
                         @2
                         ],
                     @[
                         @45360000000,
                         @1.85
                         ],
                     @[
                         @45792000000,
                         @1.49
                         ],
                     @[
                         @46483200000,
                         @1.08
                         ]
                     ];
    
    
    options.chart = chart;
    options.title = title;
    options.subtitle = subtitle;
    options.xAxis = [NSMutableArray arrayWithObjects:xaxis, nil];
    options.yAxis = [NSMutableArray arrayWithObjects:yaxis, nil];
    options.tooltip = tooltip;
    options.plotOptions = plotoptions;
    options.series = [NSMutableArray arrayWithObjects:spline1, spline2, spline3, nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
