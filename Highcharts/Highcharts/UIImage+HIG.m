//
//  UIImage+HIG.m
//  Highcharts
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import "UIImage+HIG.h"
#import "HIGCommon.h"

@implementation UIImage (HIG)

- (NSString*)image;
{
    NSString *tmpLiblary = NSTemporaryDirectory();
    tmpLiblary = [tmpLiblary stringByAppendingPathComponent:kHighchartsChartBundle];
    
    NSString *fileName = [NSString stringWithFormat:@"%@.png", [[[NSUUID UUID] UUIDString] lowercaseString]];
    
    NSString *filePath = [tmpLiblary stringByAppendingPathComponent:fileName];
    
    [UIImagePNGRepresentation(self) writeToFile:filePath atomically:YES];
    
    return [NSString stringWithFormat:@"./%@/", fileName];
}

@end
