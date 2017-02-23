//
//  ViewController.m
//  DevGround
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import "ViewController.h"
#import <Highcharts/Highcharts.h>
#import "ChartType.h"

@interface ViewController ()
@property (strong, nonatomic) HIGChartView *chartView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    
    // Do any additional setup after loading the view, typically from a nib.
    
    self.chartView = [[HIGChartView alloc] initWithFrame:CGRectMake(self.view.bounds.origin.x, self.view.bounds.origin.y + 20, self.view.bounds.size.width, 300.0f)];

    self.chartView.options = [ChartType getChartByType:self.chartType];
    
    
    [self.view addSubview:self.chartView];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
