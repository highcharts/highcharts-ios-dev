//
//  HIGProtocol.h
//  Highcharts
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol HIGProtocol <NSObject>

@required

- (void)response:(NSDictionary*)params;

@optional
@property (weak, nonatomic) UIViewController *viewController;

@end
