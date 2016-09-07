//
//  OptionsProvider.h
//  HighFit
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OptionsProvider : NSObject

+ (NSDictionary*)provideOptionsForChartType:(NSString*)chartType series:(NSArray*)series;

@end
