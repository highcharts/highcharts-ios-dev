//
//  HIGView.h
//  Highcharts
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HIGChartView : UIView

@property (strong, nonatomic, readonly) NSDictionary *options;

- (instancetype)initWithFrame:(CGRect)frame options:(NSDictionary*)options;

@end
