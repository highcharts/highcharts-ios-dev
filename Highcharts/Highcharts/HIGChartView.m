//
//  HIGChartView.m
//  Highcharts
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import "HIGChartView.h"
#import "HIGView_Private.h"
#import "HIGOptions_Private.h"

NSString * const kHighchartsChartBundleId = @"com.highcharts.charts";

@interface HIGChartView ()
@property (strong, nonatomic, readwrite) HIGOptions *options;
@end

@implementation HIGChartView

- (void)didMoveToSuperview
{
    [super didMoveToSuperview];
    
    [self loadHighcharts:[self.options toJSONString]];
}

- (instancetype)initWithFrame:(CGRect)frame options:(HIGOptions*)options;
{
    self = [super initWithFrame:frame bundle:kHighchartsChartBundleId];
    if (self) {
        self.options = options;
    }
    return self;
}

@end
