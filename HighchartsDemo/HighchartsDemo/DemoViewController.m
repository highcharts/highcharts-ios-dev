//
//  DemoViewControllel.m
//  HighchartsDemo
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import "DemoViewController.h"
#import <Highcharts/HIGChartView.h>

@interface DemoViewController ()
@property (strong, nonatomic) HIGChartView *chartView;
@end

@implementation DemoViewController

+ (UIViewController*)controller
{
    DemoViewController *demoViewController = [DemoViewController new];
    
    UINavigationController *controller = [[UINavigationController alloc] initWithRootViewController:demoViewController];
    
    return controller;
}

#pragma mark - ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(done)];
}

- (void)viewWillAppear:(BOOL)animated
{
    self.chartView = [[HIGChartView alloc] initWithFrame:self.view.bounds options:self.options];
    
    [self.view addSubview:self.chartView];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - 

- (void)done
{
    [self dismissViewControllerAnimated:YES completion:^(){
    }];
}

@end
