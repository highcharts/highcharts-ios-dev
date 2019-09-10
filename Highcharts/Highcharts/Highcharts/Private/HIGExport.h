//
//  HIGExport.h
//  Highcharts
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  Plugin Class Required to export functionality.
 */
@interface HIGExport : NSObject

/**
 *  Parse objects from JS and create objective-c representations.
 *
 *  @param params from JS runtime.
 */
- (void)response:(NSString*)params filename:(NSString*)filename;

/**
 *  This method take action for specified objects.
 *
 *  @param objects to take actions from JS runtime.
 */
- (void)action:(NSArray*)objects;

@property (weak, nonatomic) UIViewController *viewController;

@end
