//
//  ViewController.m
//  ExampleCharts
//
//  Created by Highsoft AS 09.12.2015.
//  Copyright © 2015 Highsoft AS. All rights reserved.
//

#import "ViewController.h"
#import "HighchartsView.h"

@interface ViewController ()
@property (nonatomic, strong) HighchartsView *highchartsView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.highchartsView = [[HighchartsView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:self.highchartsView];
    
    NSString *charts = [NSString stringWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"first-chart" ofType:@"js"] encoding:NSUTF8StringEncoding error:nil];
    
    [self.highchartsView loadHighcharts:charts];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator
{
    [self.highchartsView setFrame:CGRectMake(CGRectGetMinX(self.view.bounds), CGRectGetMinY(self.view.bounds), size.width, size.height)];
}

@end
