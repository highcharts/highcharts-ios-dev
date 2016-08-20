//
//  HIGDependency.m
//  Highcharts
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import "HIGDependency.h"

@implementation HIGDependency

+ (NSDictionary*)addOptions:(NSDictionary*)options;
{
    if (!options) {
        return nil;
    }
    
    NSMutableDictionary *tmpOptions = [options mutableCopy];
    
    if (!tmpOptions[@"chart"]) {
        [tmpOptions setValue:@{@"renderTo": @"container"} forKey:@"chart"];
    }
    
    if (tmpOptions[@"chart"]) {
        NSMutableDictionary *chart = [tmpOptions[@"chart"] mutableCopy];
        chart[@"renderTo"] = @"container";
        [tmpOptions setValue:chart forKey:@"chart"];
    }
    
    return [tmpOptions copy];
}

+ (NSArray*)pluginsForOptions:(NSDictionary*)options;
{
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
    
    NSDictionary *plugins = [NSDictionary dictionaryWithContentsOfFile:[bundle pathForResource:@"Charts" ofType:@"plist"]];
    
    NSString *chart = options[@"chart"][@"type"];
    
    return plugins[chart] ? : nil;
}

+ (NSArray*)pluginsForPlugin:(NSString*)plugin
{
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
    
    NSDictionary *plugins = [NSDictionary dictionaryWithContentsOfFile:[bundle pathForResource:@"Plugins" ofType:@"plist"]];
    
    return plugins[plugin] ? : @[plugin];
}

@end
