//
//  HIGDependency.h
//  Highcharts
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  Options to prepare before inserting to html/js variables.
 */
@interface HIGDependency : NSObject

/**
 *  Prepares options object and adds requireds params.
 *
 *  @param options object to prepare.
 *
 *  @return prepared options object.
 */
+ (NSDictionary*)addOptions:(NSDictionary*)options;

/**
 *  Return plugins required to chart render.
 *
 *  @param options object for searching.
 *
 *  @return return plugin name to load.
 */
+ (NSArray*)pluginsForOptions:(NSDictionary*)options;

/**
 *  Returns additional plugins if are required to plugin dependency.
 *
 *  @param plugin name to search for dependency.
 *
 *  @return list of plugins dependency.
 */
+ (NSArray*)pluginsForPlugin:(NSString*)plugin;

@end
