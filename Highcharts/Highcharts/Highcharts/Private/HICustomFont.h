//
//  HICustomFont.h
//  Highcharts
//
//  License: www.highcharts.com/license
//  Copyright © 2019 Highsoft AS. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  This class adds a custom font to HC bundle.
 */
@interface HICustomFont : NSObject

/**
 *  Adds font from a path to the bundle.
 *
 *  @param path an absolute path pointing to the location of the font.
 *  @param bundle it is bundle to which the font will be added
 *
 *  @return return status of adding.
 */
+ (BOOL)addFont:(NSString *)path bundle:(NSBundle*)bundle;

@end
