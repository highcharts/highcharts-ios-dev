//
//  ViewController.m
//  DevGround
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import "ViewController.h"
#import <Highcharts/Highcharts.h>

@interface ViewController ()
@property (strong, nonatomic) HIGChartView *chartView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.chartView = [[HIGChartView alloc] initWithFrame:CGRectMake(self.view.bounds.origin.x, self.view.bounds.origin.y, self.view.bounds.size.width, 240.0f)];
    
    HIOptions *options = [[HIOptions alloc]init];
    
    Exporting *exporting = [[Exporting alloc]init];
    exporting.enabled = @NO;
    
    Chart *chart = [[Chart alloc]init];
    chart.type = @"column";
    
    Title *title = [[Title alloc]init];
    title.text = @"";
    
    Subtitle *subtitle = [[Subtitle alloc]init];
    subtitle.text = @"";
    
    XAxis *xAxis = [[XAxis alloc]init];
    
    YAxis *yAxis = [[YAxis alloc]init];
    yAxis.title = [[YAxisTitle alloc]init];
    yAxis.title.text = @"";
    yAxis.tickAmount = @1;
    
    Column *series = [[Column alloc]init];
    series.enableMouseTracking = @NO;
    series.showInLegend = @NO;
    series.data = [NSMutableArray arrayWithObjects: @49.9,
                   @71.5,
                   @106.4,
                   @129.2,
                   @144,
                   @176,
                   @135.6,
                   @148.5,
                   @216.4,
                   @194.1,
                   @95.6,
                   @54.4, nil];
    options.exporting = exporting;
    options.chart = chart;
    options.title = title;
    options.subtitle = subtitle;
    options.xAxis = [NSMutableArray arrayWithObjects:xAxis, nil];
    options.yAxis = [NSMutableArray arrayWithObjects:yAxis, nil];
    options.series = [NSMutableArray arrayWithObjects:series, nil];

    
    self.chartView.options = options;
    
    [self.view addSubview:self.chartView];
    
    [self.button addTarget:self action:@selector(buttonReload:) forControlEvents:UIControlEventTouchUpInside];
    [self.view bringSubviewToFront:self.button];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)buttonReload:(UIButton*)sender
{
    self.chartView.options = @{
                          @"exporting": @{
                                  @"enabled": @NO
                                  },
                          @"chart": @{
                                  @"type": @"column"
                                  },
                          @"title": @{
                                  @"text": @""
                                  },
                          @"subtitle": @{
                                  @"text": @""
                                  },
                          @"xAxis": @{
                                  },
                          @"yAxis": @{
                                  @"title": @{
                                          @"text": @""
                                          },
                                  @"tickAmount": @1
                                  },
                          @"series": @[
                                  @{ @"enableMouseTracking": @NO,@"showInLegend": @NO, @"data" : @[
                                             @49.9,
                                             @71.5,
                                             @106.4
                                             ]
                                     }
                                  ]
                          };
    
    [self.chartView reload];
}

@end
