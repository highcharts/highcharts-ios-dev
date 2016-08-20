//
//  UIColor+HIG.m
//  Highcharts
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import "UIColor+HIG.h"

@implementation UIColor (HIG)

- (NSString*)color;
{
    const CGFloat *components = CGColorGetComponents(self.CGColor);
    
    CGFloat r = components[0];
    CGFloat g = components[1];
    CGFloat b = components[2];
    
    NSString *color = [NSString stringWithFormat:@"#%02X%02X%02X", (int)(r * 255), (int)(g * 255), (int)(b * 255)];
    
    return color;
}

@end
