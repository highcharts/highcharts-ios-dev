//
//  HIGChartView.h
//  Highcharts
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import "HIGView.h"
#import "HIGChart.h"

@interface HIGChartView : HIGView

@property (strong, nonatomic, readonly) HIGChart *chart;

- (instancetype)initWithFrame:(CGRect)frame chart:(HIGChart*)chart;

@end
