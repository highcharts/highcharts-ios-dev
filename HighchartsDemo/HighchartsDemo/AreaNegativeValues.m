//
//  AreaNegativeValues.m
//  HighchartsDemo
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import "AreaNegativeValues.h"

@interface AreaNegativeValues ()

@end

@implementation AreaNegativeValues

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.options = @{
                     @"chart": @{
                             @"type": @"area",
                             @"renderTo" : @"container"
                             },
                     @"title": @{
                             @"text": @"Area chart with negative values"
                             },
                     @"xAxis": @{
                             @"categories": @[ @"Apples", @"Oranges", @"Pears", @"Grapes", @"Bananas" ]
                             },
                     @"credits": @{
                             @"enabled": @NO
                             },
                     @"series": @[ @{
                                       @"name": @"John",
                                       @"data": @[@5, @3, @4, @7, @2]
                                       }, @{
                                       @"name": @"Jane",
                                       @"data": @[@2, @-2, @-3, @2, @1]
                                       }, @{
                                       @"name": @"Joe",
                                       @"data": @[@3, @4, @4, @-2, @5]
                                       }]
                     
                     };
}

@end
