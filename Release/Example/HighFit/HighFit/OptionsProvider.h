//
//  OptionsProvider.h
//  HighFit
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OptionsProvider : NSObject

+ (NSDictionary*)provideOptionsForChartType:(NSDictionary*)options series:(NSArray*)series type:(NSString*)type;

@end
