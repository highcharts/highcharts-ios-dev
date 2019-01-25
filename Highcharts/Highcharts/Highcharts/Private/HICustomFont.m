//
//  HICustomFont.m
//  Highcharts
//
//  License: www.highcharts.com/license
//  Copyright © 2019 Highsoft AS. All rights reserved.
//

#import "HICustomFont.h"

@implementation HICustomFont

+ (BOOL)addFont:(NSString *)path bundle:(NSBundle *)bundle {
    NSString *font = [path lastPathComponent];
    NSString *fontName = [font stringByDeletingPathExtension];
    NSString *fontExtension = [font pathExtension];
    NSString *copyFont = [NSString stringWithFormat:@"%@_copy.%@", fontName, fontExtension];
    
    if (bundle == nil) {
        NSLog(@"Error adding font: %@. Code: 0", fontName);
        return false;
    }
    
    NSString *copyFontPath = [[bundle bundlePath] stringByAppendingPathComponent:copyFont];
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    
    if ([fileManager fileExistsAtPath:copyFontPath]) {
        NSLog(@"Error adding font: %@. It already exists.", fontName);
        return false;
    }
    
    NSError *copyError = nil;
    if (![fileManager copyItemAtPath:path toPath:copyFontPath error:&copyError]){
        NSLog(@"Error adding font: %@. Code: 1", fontName);
        return false;
    }
    
    NSString *cssPath = [bundle pathForResource:@"highcharts" ofType:@"css"];
    
    NSError *contentError = nil;
    NSString *contents = [NSString stringWithContentsOfFile:cssPath encoding:NSUTF8StringEncoding error:&contentError];
    if (contentError) {
        NSLog(@"Error adding font: %@. Code: 2", fontName);
        return false;
    }
    
    NSString *cssFontFace = [NSString stringWithFormat:@"@font-face {\n\tfont-family: '%@';\n\tsrc: url('%@');\n}\n\n", fontName, copyFont];
    
    NSString *mergedFontFace = [NSString stringWithFormat:@"%@%@", contents, cssFontFace];
    
    NSError *writeError = nil;
    if (![mergedFontFace writeToFile:cssPath atomically:YES encoding:NSUTF8StringEncoding error:&writeError]) {
        NSLog(@"Error adding font: %@. Code: 3", fontName);
        return false;
    }
    
    return true;
}

@end
