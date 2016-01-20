//
//  HIGChartView.h
//  Highcharts
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import "HIGView.h"

@interface HIGChartView : HIGView

@property (strong, nonatomic, readonly) NSDictionary *options;

- (instancetype)initWithFrame:(CGRect)frame options:(NSDictionary *)options;

@end
