//
//  HIClassJSMethods.h
//  Highcharts
//
//  License: www.highcharts.com/license
//  Copyright © 2018 Highsoft AS. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  This clas is needed to convert iOS methods on HI objects to string representation of JS method.
 */
@interface HIClassJSMethods : NSObject

/**
 *  Prepares objects inside a method and returns JS method.
 *
 *  @param dict Dictionary of needed params to JS method.
 *
 *  @return String representation of JS method.
 */
+ (NSString *)getJSClassMethodString:(NSDictionary *) dict;

@end
