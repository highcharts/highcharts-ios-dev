//
//  HIGJavaScript.m
//  Highcharts
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import "HIGJavaScript.h"

@implementation HIGJavaScript

- (NSString*)JSObject:(id)object
{
    if (![NSJSONSerialization isValidJSONObject:object]) {
        NSAssert(NO, @"Highcharts options was not a valid JSON!");
        return nil;
    }
    
    NSError *error;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:object
                                                       options:0
                                                         error:&error];
    
    if (!jsonData) {
        NSAssert(jsonData, @"Highcharts options was not provided!");
        return nil;
    }
    
    NSString *preReplacement = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    NSString *openingsReplaced = [preReplacement stringByReplacingOccurrencesOfString:@"\"__xx__" withString:@""];
    NSString *closingsReplaced = [openingsReplaced stringByReplacingOccurrencesOfString:@"__xx__\"" withString:@""];
    NSString *slashReplaced = [closingsReplaced stringByReplacingOccurrencesOfString:@"\\/" withString:@"/"];
    
    return slashReplaced;
}

@end
