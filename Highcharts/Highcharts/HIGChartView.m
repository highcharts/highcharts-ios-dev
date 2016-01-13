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

@implementation HIGChartView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame bundle:kHighchartsChartBundleId];
    if (self) {
        
    }
    return self;
}

- (void)loadHighcharts:(NSString *)highcharts
{
    [super loadHighcharts:highcharts];
}

@end
