//
//  DemoViewControllel.m
//  HighchartsDemo
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import "DemoViewController.h"
#import <Highcharts/Highcharts.h>

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
    [super viewWillAppear:animated];
    
    self.chartView = [[HIGChartView alloc] initWithFrame:self.view.bounds];
    self.chartView.options = self.options;
    self.chartView.theme = self.theme;
    self.chartView.plugins = self.plugins;
    self.chartView.viewController = self;
    
    [self.view addSubview:self.chartView];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator
{
    [self.chartView setFrame:CGRectMake(CGRectGetMinX(self.view.bounds), CGRectGetMinY(self.view.bounds), size.width, size.height)];
}

#pragma mark - Dismiss view

- (void)done
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
