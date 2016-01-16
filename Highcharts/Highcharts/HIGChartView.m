//
//  HIGChartView.m
//  Highcharts
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import "HIGChartView.h"
#import "HIGView_Private.h"
#import "HIGChart_Private.h"

NSString * const kHighchartsChartBundleId = @"com.highcharts.charts";

@interface HIGChartView ()
@property (strong, nonatomic, readwrite) HIGChart *chart;
@end

@implementation HIGChartView

- (void)didMoveToSuperview
{
    [super didMoveToSuperview];
    
    [self loadHighcharts:self.chart.JSON];
}

- (instancetype)initWithFrame:(CGRect)frame chart:(HIGChart*)chart;
{
    self = [super initWithFrame:frame bundle:kHighchartsChartBundleId];
    if (self) {
        self.chart = chart;
    }
    return self;
}

@end
