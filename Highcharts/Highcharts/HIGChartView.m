//
//  HIGChartView.m
//  Highcharts
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import "HIGChartView.h"
#import "HIGView_Private.h"

NSString * const kHighchartsChartBundleId = @"com.highcharts.charts";

@interface HIGChartView ()

@end

@implementation HIGChartView

@dynamic options;

- (instancetype)initWithFrame:(CGRect)frame options:(NSDictionary *)options;
{
    self = [super initWithFrame:frame bundle:kHighchartsChartBundleId];
    if (self) {
        self.options = options;
    }
    return self;
}

@end
