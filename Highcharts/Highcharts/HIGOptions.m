//
//  HIGOptions.m
//  Highcharts
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import "HIGOptions.h"

@implementation HIGOptions

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

+ (NSDictionary*)pluginForOptions:(NSDictionary*)options;
{
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
    
    NSDictionary *plugins = [NSDictionary dictionaryWithContentsOfFile:[bundle pathForResource:@"Plugins" ofType:@"plist"]];
    
    NSString *plugin = options[@"chart"][@"type"];
    
    return plugins[plugin];
}

@end
