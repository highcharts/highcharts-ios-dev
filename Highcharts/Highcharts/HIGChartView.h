//
//  HIGView.h
//  Highcharts
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HIGChartView : UIView

@property (strong, nonatomic) NSDictionary *options;
@property (strong, nonatomic) NSString *theme;
@property (strong, nonatomic) NSString *plugin;
@property (assign, nonatomic) BOOL debug;

@end
