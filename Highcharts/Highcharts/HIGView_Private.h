//
//  HIGView_Private.h
//  Highcharts
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import "HIGView.h"

@interface HIGView ()

@property (strong, nonatomic, readwrite) NSDictionary *options;

- (instancetype)initWithFrame:(CGRect)frame bundle:(NSString*)bundle;

@end