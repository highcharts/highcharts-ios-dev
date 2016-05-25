//
//  HIGOptions.h
//  Highcharts
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  Options to prepare before inserting to html/js variables.
 */
@interface HIGOptions : NSObject

/**
 *  Prepares options object and adds requireds params.
 *
 *  @param options object to prepare.
 *
 *  @return prepared options object.
 */
+ (NSDictionary*)addOptions:(NSDictionary*)options;

/**
 *  Return
 *
 *  @param options object for searching.
 *
 *  @return return plugin name to load.
 */
+ (NSDictionary*)pluginForOptions:(NSDictionary*)options;

@end
