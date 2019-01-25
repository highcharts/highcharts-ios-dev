//
//  HIGBundle.h
//  Highcharts
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  This class preloads and returns bundle assets needed.
 */
@interface HIGBundle : NSObject

/**
 *  Preloads bundle with specified name.
 *
 *  @param bundleName bundle name to preload in reverse domain egz 'com.higsoft.bundle'
 *
 *  @return return status of preload.
 */
+ (BOOL)preloadBundle:(NSString*)bundleName;

/**
 *  Returns bundle object that need to be preload.
 *
 *  @param bundleName bundle name to preload in reverse domain egz 'com.higsoft.bundle'
 *
 *  @return bundle object specified name. Returns nil if object is not found.
 */
+ (NSBundle*)bundle:(NSString*)bundleName;

@end
