//
//  HIGBundle.m
//  Highcharts
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import "HIGBundle.h"

static NSString *const kHIGBundleErrorDomain = @"com.highcharts.bundle.preload";
static NSString *const kHIGBundleValidationFileName = @"highcharts.html";

typedef NS_ENUM(NSInteger, HIGBundleErrorCode) {
    HIGBundleErrorCodeSourceBundleNotFound = 1,
    HIGBundleErrorCodeCopyFailed = 2,
    HIGBundleErrorCodeValidationFailed = 3,
    HIGBundleErrorCodeInstallFailed = 4
};

@interface HIGBundle (Private)

+ (BOOL)isValidBundleDirectory:(NSString *)path;
+ (nullable NSBundle *)prepareBundle:(NSString *)bundleName error:(NSError * _Nullable * _Nullable)error;

@end

static dispatch_queue_t higBundleQueue(void) {
    static dispatch_queue_t queue = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        queue = dispatch_queue_create("com.highcharts.bundle.preload.queue", DISPATCH_QUEUE_SERIAL);
    });
    return queue;
}

static NSError *higBundleError(HIGBundleErrorCode code, NSString *localizedDescription, NSError * _Nullable underlyingError) {
    NSMutableDictionary *userInfo = [@{ NSLocalizedDescriptionKey: localizedDescription } mutableCopy];
    if (underlyingError) {
        userInfo[NSUnderlyingErrorKey] = underlyingError;
    }
    return [NSError errorWithDomain:kHIGBundleErrorDomain code:code userInfo:userInfo];
}

@implementation HIGBundle

+ (BOOL)isValidBundleDirectory:(NSString*)path
{
    if (!path) {
        return NO;
    }
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    BOOL isDirectory = NO;
    
    if (![fileManager fileExistsAtPath:path isDirectory:&isDirectory] || !isDirectory) {
        return NO;
    }
    
    NSString *validationPath = [path stringByAppendingPathComponent:kHIGBundleValidationFileName];
    isDirectory = NO;
    
    if (![fileManager fileExistsAtPath:validationPath isDirectory:&isDirectory] || isDirectory) {
        return NO;
    }
    
    NSDictionary<NSFileAttributeKey, id> *attributes = [fileManager attributesOfItemAtPath:validationPath error:nil];
    return attributes.fileSize > 0;
}

+ (nullable NSBundle*)sourceBundle:(NSString*)bundleName
{
    NSBundle *frameworkBundle = [NSBundle bundleForClass:[self class]];
    NSString *sourceBundlePath = [frameworkBundle pathForResource:bundleName ofType:nil];
    return sourceBundlePath ? [NSBundle bundleWithPath:sourceBundlePath] : nil;
}

+ (nullable NSBundle*)prepareBundle:(NSString*)bundleName error:(NSError * _Nullable * _Nullable)error
{
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSBundle *sourceBundle = [self sourceBundle:bundleName];
    
    if (!sourceBundle) {
        if (error) {
            *error = higBundleError(HIGBundleErrorCodeSourceBundleNotFound, @"Highcharts source bundle was not found.", nil);
        }
        return nil;
    }
    
    NSString *destinationPath = [NSTemporaryDirectory() stringByAppendingPathComponent:bundleName];
    
    if ([self isValidBundleDirectory:destinationPath]) {
        return [NSBundle bundleWithPath:destinationPath];
    }
    
    NSString *stagingName = [NSString stringWithFormat:@"%@-%@.staging", bundleName, [[NSUUID UUID] UUIDString]];
    NSString *stagingPath = [NSTemporaryDirectory() stringByAppendingPathComponent:stagingName];
    
    [fileManager removeItemAtPath:stagingPath error:nil];
    
    NSError *copyError = nil;
    if (![fileManager copyItemAtPath:sourceBundle.bundlePath toPath:stagingPath error:&copyError]) {
        if (error) {
            *error = higBundleError(HIGBundleErrorCodeCopyFailed, @"Unable to copy Highcharts resources.", copyError);
        }
        [fileManager removeItemAtPath:stagingPath error:nil];
        return nil;
    }
    
    if (![self isValidBundleDirectory:stagingPath]) {
        if (error) {
            *error = higBundleError(HIGBundleErrorCodeValidationFailed, @"Copied Highcharts resources failed validation.", nil);
        }
        [fileManager removeItemAtPath:stagingPath error:nil];
        return nil;
    }
    
    [fileManager removeItemAtPath:destinationPath error:nil];
    
    NSError *moveError = nil;
    if (![fileManager moveItemAtPath:stagingPath toPath:destinationPath error:&moveError]) {
        if (error) {
            *error = higBundleError(HIGBundleErrorCodeInstallFailed, @"Unable to install prepared Highcharts resources.", moveError);
        }
        [fileManager removeItemAtPath:stagingPath error:nil];
        return nil;
    }
    
    return [NSBundle bundleWithPath:destinationPath];
}

+ (BOOL)preloadBundle:(NSString*)bundleName
{
    __block NSBundle *bundle = nil;
    __block NSError *error = nil;
    
    dispatch_sync(higBundleQueue(), ^{
        bundle = [self prepareBundle:bundleName error:&error];
        if (!bundle && error) {
            NSLog(@"[Highcharts] Error preparing resources: %@", [error localizedDescription]);
        }
    });
    
    return bundle != nil;
}

+ (void)preloadBundleInBackground:(NSString*)bundleName
{
    [self preloadBundleInBackground:bundleName completion:nil];
}

+ (void)preloadBundleInBackground:(NSString*)bundleName completion:(nullable HIGBundlePreloadCompletion)completion
{
    dispatch_async(higBundleQueue(), ^{
        NSError *error = nil;
        NSBundle *bundle = [self prepareBundle:bundleName error:&error];
        
        if (!bundle && error) {
            NSLog(@"[Highcharts] Error preparing resources: %@", [error localizedDescription]);
        }
        
        if (!completion) {
            return;
        }
        
        dispatch_async(dispatch_get_main_queue(), ^{
            completion(bundle, error);
        });
    });
}

+ (nullable NSBundle*)bundleIfExists:(NSString*)bundleName
{
    NSString *tmpBundleDirectory = [NSTemporaryDirectory() stringByAppendingPathComponent:bundleName];
    return [self isValidBundleDirectory:tmpBundleDirectory] ? [NSBundle bundleWithPath:tmpBundleDirectory] : nil;
}

+ (nullable NSBundle*)bundle:(NSString*)bundleName
{
    NSBundle *bundle = [self bundleIfExists:bundleName];
    return bundle ?: [self sourceBundle:bundleName];
}

@end
