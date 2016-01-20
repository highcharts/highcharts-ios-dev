//
//  DemoViewControllel.m
//  HighchartsDemo
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import "DemoViewController.h"

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
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
