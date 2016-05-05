//
//  HIGBundle.h
//  Highcharts
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HIGBundle : NSObject

+ (BOOL)preloadBundle:(NSString*)bundleName;

+ (NSBundle*)bundle:(NSString*)bundleName;

@end
