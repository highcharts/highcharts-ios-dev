//
//  HIGJavaScript.h
//  Highcharts
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  This class is needed to JSON operations.
 */
@interface HIGJavaScript : NSObject

/**
 *  Prepares object and returns as JSON representation.
 *
 *  @param object NSArray or NSDictionary object to return.
 *
 *  @return NSString JSON representaion.
 */
- (NSString*)JSObject:(id)object;

@end
