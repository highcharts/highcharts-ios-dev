//
//  DemoViewControllerProtocol.h
//  HighchartsDemo
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol DemoViewControllerProtocol <NSObject>

@property (strong, nonatomic) NSString *demoTitle;

+ (UIViewController*)controller;

@end
