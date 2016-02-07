//
//  HIGChartViewJS.h
//  Highcharts
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HIGChartViewJS : UIView

@property (strong, nonatomic, readonly) NSString *js;

- (instancetype)initWithFrame:(CGRect)frame js:(NSString*)js;

@end
