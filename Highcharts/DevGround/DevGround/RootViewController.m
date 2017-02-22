//
//  RootViewController.m
//  DevGround
//
//  Created by krzysiek on 22.02.2017.
//  Copyright © 2017 Highsoft AS. All rights reserved.
//

#import "RootViewController.h"
#import "ViewController.h"

@implementation RootViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    
    for (UIButton *button in self.typeButtons) {
        [button addTarget:self action:@selector(typeButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
    }
    
}

-(void)typeButtonTapped:(UIButton *)sender {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ViewController *vc = [storyboard instantiateViewControllerWithIdentifier:@"ChartVC"];
    vc.chartType = sender.titleLabel.text;
    [self.navigationController pushViewController:vc animated:false];
}

@end
