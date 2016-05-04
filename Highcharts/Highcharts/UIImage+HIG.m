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
    
    NSString *fileName = [NSString stringWithFormat:@"%@.png", [[[NSUUID UUID] UUIDString] lowercaseString]];
    
    NSString *filePath = [tmpLiblary stringByAppendingPathComponent:fileName];
    
    NSError *error = nil;
    
    [UIImagePNGRepresentation(self) writeToFile:filePath options:NSDataWritingFileProtectionNone error:&error];
    
    NSString *imagePath = [NSString stringWithFormat:@"url(%@)", filePath];
    
    return imagePath;
}

@end
