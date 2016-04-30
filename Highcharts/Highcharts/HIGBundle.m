//
//  HIGBundle.m
//  Highcharts
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import "HIGBundle.h"

@implementation HIGBundle

+ (NSBundle*)prepareBundle:(NSString*)bundleName
{
    NSBundle *highchartsBundle = nil;
    
    NSBundle *frameworkBundle = [NSBundle bundleForClass:[self class]];
    
    NSString *tmpBundle = [frameworkBundle pathForResource:bundleName ofType:nil];
    
    NSString *tmpLiblary = NSTemporaryDirectory();
    tmpLiblary = [tmpLiblary stringByAppendingPathComponent:bundleName];
    
    NSError *error = nil;
    if ([[NSFileManager defaultManager] fileExistsAtPath:tmpLiblary]) {
        if (![[NSFileManager defaultManager] removeItemAtPath:tmpLiblary error:&error]) {
            NSLog(@"Error copying files: %@", [error localizedDescription]);
        }
    }
    
    if (![[NSFileManager defaultManager] copyItemAtPath:tmpBundle toPath:tmpLiblary error:&error]) {
        NSLog(@"Error copying files: %@", [error localizedDescription]);
    }
    
    highchartsBundle = [NSBundle bundleWithPath:tmpLiblary];
    
    NSAssert(highchartsBundle, @"Highcharts bundle was not found!");
    
    return highchartsBundle;
}

@end
