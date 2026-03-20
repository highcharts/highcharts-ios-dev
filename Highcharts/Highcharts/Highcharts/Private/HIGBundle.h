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
 *  Preloads bundle with specified name in background queue.
 *
 *  @param bundleName bundle name to preload in reverse domain egz 'com.higsoft.bundle'
 */
+ (void)preloadBundleInBackground:(NSString*)bundleName;

/**
 *  Returns bundle object that need to be preload.
 *
 *  @param bundleName bundle name to preload in reverse domain egz 'com.higsoft.bundle'
 *
 *  @return preloaded writable bundle when it exists; otherwise framework resource bundle.
 */
+ (NSBundle*)bundle:(NSString*)bundleName;

/**
 *  Returns preloaded bundle object if it already exists in temporary directory.
 *
 *  @param bundleName bundle name to preload in reverse domain egz 'com.higsoft.bundle'
 *
 *  @return bundle object specified name or nil when not preloaded yet.
 */
+ (NSBundle*)bundleIfExists:(NSString*)bundleName;

/**
 *  Returns read-only framework resource bundle.
 *
 *  @param bundleName bundle name to locate in framework resources.
 *
 *  @return framework resource bundle or nil when object is not found.
 */
+ (NSBundle*)sourceBundle:(NSString*)bundleName;

@end
