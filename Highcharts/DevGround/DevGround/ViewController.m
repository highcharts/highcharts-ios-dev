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

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    HIGChartView *chartView = [[HIGChartView alloc] initWithFrame:CGRectMake(self.view.bounds.origin.x, self.view.bounds.origin.y, self.view.bounds.size.width, 240.0f)];
    
    
    chartView.options = @{
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
                                                 @106.4,
                                                 @129.2,
                                                 @144,
                                                 @176,
                                                 @135.6,
                                                 @148.5,
                                                 @216.4,
                                                 @194.1,
                                                 @95.6,
                                                 @54.4
                                                 ]
                                  }
                                  ]
                          };
    
    [self.view addSubview:chartView];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
