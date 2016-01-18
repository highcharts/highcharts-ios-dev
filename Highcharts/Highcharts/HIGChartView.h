//
//  HIGChartView.h
//  Highcharts
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import "HIGView.h"
#import "HIGOptions.h"

@interface HIGChartView : HIGView

@property (strong, nonatomic, readonly) HIGOptions *option;

- (instancetype)initWithFrame:(CGRect)frame options:(HIGOptions*)options;

@end
