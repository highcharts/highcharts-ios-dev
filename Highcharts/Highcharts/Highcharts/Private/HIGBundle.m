//
//  HIGBundle.m
//  Highcharts
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import "HIGBundle.h"

@implementation HIGBundle

static dispatch_queue_t higBundleQueue(void) {
    static dispatch_queue_t queue;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        queue = dispatch_queue_create("com.highcharts.bundle.preload.queue", DISPATCH_QUEUE_SERIAL);
    });
    return queue;
}

+ (BOOL)preloadBundle:(NSString*)bundleName
{
    __block BOOL result = YES;
    dispatch_sync(higBundleQueue(), ^{
        NSBundle *frameworkBundle = [self sourceBundle:bundleName];
        NSString *tmpBundle = [frameworkBundle bundlePath];
        NSString *tmpBundleDirectory = [NSTemporaryDirectory() stringByAppendingPathComponent:bundleName];
        if ([[NSFileManager defaultManager] fileExistsAtPath:tmpBundleDirectory]) {
            return;
        }
        
        NSError *error = nil;
        if (![[NSFileManager defaultManager] copyItemAtPath:tmpBundle toPath:tmpBundleDirectory error:&error]) {
            NSLog(@"Error copying files: %@", [error localizedDescription]);
            result = NO;
        }
    });
    return result;
}

+ (void)preloadBundleInBackground:(NSString*)bundleName
{
    dispatch_async(higBundleQueue(), ^{
        NSBundle *frameworkBundle = [self sourceBundle:bundleName];
        NSString *tmpBundle = [frameworkBundle bundlePath];
        NSString *tmpBundleDirectory = [NSTemporaryDirectory() stringByAppendingPathComponent:bundleName];
        if ([[NSFileManager defaultManager] fileExistsAtPath:tmpBundleDirectory]) {
            return;
        }
        
        NSError *error = nil;
        if (![[NSFileManager defaultManager] copyItemAtPath:tmpBundle toPath:tmpBundleDirectory error:&error]) {
            NSLog(@"Error copying files: %@", [error localizedDescription]);
        }
    });
}

+ (NSBundle*)bundle:(NSString*)bundleName
{
    NSBundle *bundle = [self bundleIfExists:bundleName];
    if (!bundle) {
        bundle = [self sourceBundle:bundleName];
    }
    NSAssert(bundle, @"Highcharts bundle was not found!");
    return bundle;
}

+ (NSBundle*)bundleIfExists:(NSString*)bundleName
{
    NSBundle *bundle = nil;
    NSString *tmpBundleDirectory = [NSTemporaryDirectory() stringByAppendingPathComponent:bundleName];
    if ([[NSFileManager defaultManager] fileExistsAtPath:tmpBundleDirectory]) {
        bundle = [NSBundle bundleWithPath:tmpBundleDirectory];
    }
    return bundle;
}

+ (NSBundle*)sourceBundle:(NSString*)bundleName
{
    NSBundle *frameworkBundle = [NSBundle bundleForClass:[self class]];
    NSString *bundlePath = [frameworkBundle pathForResource:bundleName ofType:nil];
    if (!bundlePath) {
        return nil;
    }
    return [NSBundle bundleWithPath:bundlePath];
}

@end
