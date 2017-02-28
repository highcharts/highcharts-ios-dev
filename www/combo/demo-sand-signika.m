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

    chartView.theme = @"sand-signika";
    
    HIOptions *options = [[HIOptions alloc]init];
    
    HITitle *title = [[HITitle alloc]init];
    title.text = @"Combination chart";
    
    HIXAxis *xaxis = [[HIXAxis alloc]init];
    xaxis.categories = [NSMutableArray arrayWithObjects:@"Apples",
                        @"Oranges",
                        @"Pears",
                        @"Bananas",
                        @"Plums", nil];
    
    HILabelsItems *item = [[HILabelsItems alloc]init];
    item.html = @"Total fruit consumption";
    item.style = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"50px", @"left", @"18px", @"top", @"black", @"color", nil];
    
    HILabels *labels = [[HILabels alloc]init];
    labels.items = [NSMutableArray arrayWithObject:item];
    
    HIColumn *column1 = [[HIColumn alloc]init];
    column1.name = @"Jane";
    column1.data = [NSMutableArray arrayWithObjects:@3,
                    @2,
                    @1,
                    @3,
                    @4, nil];
    
    HIColumn *column2 = [[HIColumn alloc]init];
    column2.name = @"John";
    column2.data = [NSMutableArray arrayWithObjects:@2,
                    @3,
                    @5,
                    @7,
                    @6, nil];
    
    HIColumn *column3 = [[HIColumn alloc]init];
    column3.name = @"Joe";
    column3.data = [NSMutableArray arrayWithObjects:@4,
                    @3,
                    @3,
                    @9,
                    @0, nil];
    
    HISpline *spline = [[HISpline alloc]init];
    spline.name = @"Average";
    spline.data = [NSMutableArray arrayWithObjects:@3,
                   @2.67,
                   @3,
                   @6.33,
                   @3.33, nil];
    spline.marker = [[HISplineMarker alloc]init];
    spline.marker.lineWidth = @2;
    spline.marker.fillColor = [[HIColor alloc]initWithName:@"white"];
    spline.marker.lineColor = [[HIColor alloc]initWithHexValue:@"f7a35c"];
    
    HIPie *pie = [[HIPie alloc]init];
    pie.name = @"Total consumption";
    pie.data = [NSMutableArray arrayWithObjects:@{
                                                  @"name": @"Jane",
                                                  @"y": @13,
                                                  @"color": @"#7cb5ec"
                                                  },
                @{
                  @"name": @"John",
                  @"y": @23,
                  @"color": @"#434348"
                  },
                @{
                  @"name": @"Joe",
                  @"y": @19,
                  @"color": @"#90ed7d"
                  }, nil];
    pie.center = [NSMutableArray arrayWithObjects:@100, @80, nil];
    pie.size = @"100";
    pie.showInLegend = @false;
    pie.dataLabels = [[HIPieDataLabels alloc]init];
    pie.dataLabels.enabled = @false;
    
    options.title = title;
    options.xAxis = [NSMutableArray arrayWithObject:xaxis];
    options.labels = labels;
    options.series = [NSMutableArray arrayWithObjects:column1, column2, column3, spline, pie, nil];
    
    chartView.options = options;
    
    [self.view addSubview:chartView];
}

@end
