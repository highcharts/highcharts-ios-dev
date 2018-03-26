//
//  HIGBundle.m
//  Highcharts
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import "HIGBundle.h"

@implementation HIGBundle

+ (BOOL)preloadBundle:(NSString*)bundleName
{
    BOOL result = YES;
    
    NSBundle *frameworkBundle = [NSBundle bundleForClass:[self class]];
    
    NSString *tmpBundle = [frameworkBundle pathForResource:bundleName ofType:nil];
    
    NSString *tmpBundleDirectory = [NSTemporaryDirectory() stringByAppendingPathComponent:bundleName];
    
    NSError *error = nil;
    if ([[NSFileManager defaultManager] fileExistsAtPath:tmpBundleDirectory]) {
        if (![[NSFileManager defaultManager] removeItemAtPath:tmpBundleDirectory error:&error]) {
            NSLog(@"Error copying files: %@", [error localizedDescription]);
            result = NO;
        }
    }
    
    if (![[NSFileManager defaultManager] copyItemAtPath:tmpBundle toPath:tmpBundleDirectory error:&error]) {
        NSLog(@"Error copying files: %@", [error localizedDescription]);
        result = NO;
    }
    
    return result;
}

+ (NSBundle*)bundle:(NSString*)bundleName
{
    NSBundle *bundle = nil;
    
    NSString *tmpBundleDirectory = [NSTemporaryDirectory() stringByAppendingPathComponent:bundleName];
    
    if ([[NSFileManager defaultManager] fileExistsAtPath:tmpBundleDirectory]) {
        bundle = [NSBundle bundleWithPath:tmpBundleDirectory];
    }
    
    NSAssert(bundle, @"Highcharts bundle was not found!");
    
    return bundle;
}

@end
