//
//  Scatter.m
//  HighchartsDemo
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import "Scatter.h"
#import <Highcharts/HIGChartViewJS.h>

@interface Scatter ()
@property (strong, nonatomic) HIGChartViewJS *chartView;
@end

@implementation Scatter

+ (UIViewController*)controller
{
    Scatter *demoViewController = [Scatter new];
    
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
    
    NSString *jsPath = [[NSBundle mainBundle] pathForResource:@"Scatter.js" ofType:nil];
    
    NSString *js = [NSString stringWithContentsOfFile:jsPath encoding:NSUTF8StringEncoding error:nil];
    
    self.chartView = [[HIGChartViewJS alloc] initWithFrame:self.view.bounds js:js];
    
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

#pragma mark -

- (void)done
{
    [self dismissViewControllerAnimated:YES completion:^(){
    }];
}

@end