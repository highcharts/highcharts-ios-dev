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
    
    NSString *encoded = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    NSString *unescapedFunctions = [HIGJavaScript unwrapFunctionSentinels:encoded];
    NSString *slashReplaced = [unescapedFunctions stringByReplacingOccurrencesOfString:@"\\/" withString:@"/"];

    return slashReplaced;
}

// HIFunction bodies are embedded in the encoded JSON as
// "__xx__<json-escaped body>__xx__". The old quote-strip alone left the JSON
// escaping in place (literal \n / \" sequences), which is only valid inside a
// JSON string - emitted as raw JavaScript it is a syntax error, so any
// formatter containing quotes or newlines broke the whole options payload.
// Here we locate each sentinel region, decode its JSON-escaped body back to
// raw source, and emit it unquoted.
+ (NSString *)unwrapFunctionSentinels:(NSString *)json
{
    static NSString *const opening = @"\"__xx__";
    static NSString *const closing = @"__xx__";

    NSMutableString *result = [NSMutableString stringWithCapacity:json.length];
    NSUInteger cursor = 0;

    while (cursor < json.length) {
        NSRange openingRange = [json rangeOfString:opening options:0 range:NSMakeRange(cursor, json.length - cursor)];
        if (openingRange.location == NSNotFound) {
            [result appendString:[json substringFromIndex:cursor]];
            break;
        }

        [result appendString:[json substringWithRange:NSMakeRange(cursor, openingRange.location - cursor)]];

        NSUInteger bodyStart = NSMaxRange(openingRange);
        // The region is a valid JSON string: the terminator is the first
        // unescaped quote, preceded by the closing sentinel.
        NSUInteger terminator = NSNotFound;
        NSUInteger i = bodyStart;
        while (i < json.length) {
            unichar c = [json characterAtIndex:i];
            if (c == '\\') {
                i += 2;
                continue;
            }
            if (c == '"') {
                terminator = i;
                break;
            }
            i += 1;
        }

        if (terminator == NSNotFound || terminator < bodyStart + closing.length ||
            ![[json substringWithRange:NSMakeRange(terminator - closing.length, closing.length)] isEqualToString:closing]) {
            // Malformed region: emit verbatim to avoid data loss.
            [result appendString:[json substringFromIndex:cursor]];
            break;
        }

        NSString *escapedBody = [json substringWithRange:NSMakeRange(bodyStart, terminator - bodyStart - closing.length)];
        NSString *rawBody = nil;
        NSData *bodyData = [[NSString stringWithFormat:@"\"%@\"", escapedBody] dataUsingEncoding:NSUTF8StringEncoding];
        if (bodyData) {
            id decoded = [NSJSONSerialization JSONObjectWithData:bodyData options:0 error:NULL];
            if ([decoded isKindOfClass:NSString.class]) {
                rawBody = decoded;
            }
        }
        if (!rawBody) {
            rawBody = escapedBody;
        }
        [result appendString:rawBody];
        cursor = terminator + 1;
    }

    return result;
}

@end
