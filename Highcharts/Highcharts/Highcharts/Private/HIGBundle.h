//
//  HIGBundle.h
//  Highcharts
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef void (^HIGBundlePreloadCompletion)(NSBundle * _Nullable bundle, NSError * _Nullable error);

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

+ (void)preloadBundleInBackground:(NSString*)bundleName;

+ (void)preloadBundleInBackground:(NSString*)bundleName completion:(nullable HIGBundlePreloadCompletion)completion;

+ (nullable NSBundle*)bundleIfExists:(NSString*)bundleName;

+ (nullable NSBundle*)sourceBundle:(NSString*)bundleName;

/**
 *  Returns bundle object that need to be preload.
 *
 *  @param bundleName bundle name to preload in reverse domain egz 'com.higsoft.bundle'
 *
 *  @return bundle object specified name. Returns nil if object is not found.
 */
+ (nullable NSBundle*)bundle:(NSString*)bundleName;

@end

NS_ASSUME_NONNULL_END
