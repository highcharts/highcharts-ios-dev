//
//  HIGHTML.m
//  Highcharts
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import "HIGHTML.h"
#import "HIGDependency.h"
#import "HIGJavaScript.h"

@interface HIGHTML ()
@property (strong, readwrite) NSString *html_tmp;
@property (strong, readwrite) NSString *html;
@property (strong, nonatomic) NSString *scripts;
@property (strong, nonatomic) NSString *options;
@property (strong, nonatomic) HIGJavaScript *js;
@end

@implementation HIGHTML

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.js = [[HIGJavaScript alloc] init];
    }
    return self;
}

- (void)loadHTML:(NSString*)path
{
    self.html_tmp = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
    
    self.html = [self.html_tmp copy];
    
    self.scripts = @"";
}

- (void)prepareJavaScript:(NSString*)js prefix:(NSString*)prefix suffix:(NSString*)suffix;
{
    if (!js) {
        return;
    }
    
    NSString *template = @"<script src=\"%@%@%@\"></script>\n";
    
    NSString *jsFileName = [NSString stringWithFormat:@"%@%@%@", prefix, js, suffix];
    NSString *jsFilePath = [self.baseURL stringByAppendingPathComponent:jsFileName];
    
    if (![[NSFileManager defaultManager] fileExistsAtPath:jsFilePath]) {
        NSLog(@"[ Highcharts ]: %@, dont exits!", jsFileName);
        return;
    }
    
    self.scripts = [self.scripts stringByAppendingString:[NSString stringWithFormat:template, prefix, js, suffix]];
}

- (void)prepareOptions:(NSDictionary*)options;
{
    options = [HIGDependency addOptions:options];
    
    self.options = [self.js JSObject:options];
}

- (void)injectJavaScriptToHTML
{
    self.html = [self.html_tmp stringByReplacingOccurrencesOfString:@"{{script}}" withString:self.scripts?:@""];
    
    self.html = [self.html stringByReplacingOccurrencesOfString:@"{{options}}" withString:self.options?:@""];
}

@end