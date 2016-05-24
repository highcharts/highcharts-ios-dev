//
//  HIGHTML.m
//  Highcharts
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import "HIGHTML.h"
#import "HIGOptions.h"
#import "HIGJavaScript.h"

@interface HIGHTML ()
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
    self.html = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
    
    self.scripts = @"";
}

- (void)prepareJavaScript:(NSArray*)files prefix:(NSString*)prefix suffix:(NSString*)suffix;
{
    if (!files) {
        return;
    }
    
    NSString *template = @"<script src=\"%@%@%@\"></script>\n";
    
    for (NSString *js in files) {
        
        NSString *jsFileName = [NSString stringWithFormat:@"%@%@%@", prefix, js, suffix];
        NSString *jsFilePath = [self.baseURL stringByAppendingPathComponent:jsFileName];
        
        if (![[NSFileManager defaultManager] fileExistsAtPath:jsFilePath]) {
            NSLog(@"[ Highcharts ]: %@, dont exits!", jsFileName);
            continue;
        }
        self.scripts = [self.scripts stringByAppendingString:[NSString stringWithFormat:template, prefix, js, suffix]];
    }
}

- (void)prepareOptions:(NSDictionary*)options;
{
    options = [HIGOptions addOptions:options];
    
    self.options = [self.js JSObject:options];
}

- (void)injectJavaScriptToHTML
{
    self.html = [self.html stringByReplacingOccurrencesOfString:@"{{script}}" withString:self.scripts?:@""];
    
//    NSString *tmpOptions = [self.options stringByReplacingOccurrencesOfString:@"\"{code}" withString:@""];
//    tmpOptions = [tmpOptions stringByReplacingOccurrencesOfString:@"{code}\"" withString:@""];
    
//    NSString *code = @"function() { var params = {}; params.value = this.value; win.location.href = 'formatter://test#' + escape((JSON.stringify(params)));  return this.value;}";
    
    
    
    NSString *formatter = @"function() { window.webkit.messageHandlers.formatter.postMessage(this.value); return this.value;}";
    self.options = [self.options stringByReplacingOccurrencesOfString:@"\"{{formatter}}\"" withString:formatter];
    
//    NSString *event = @"function(e) { console.log( Highcharts.dateFormat('%Y-%m-%d %H:%M:%S', e.xAxis[0].value), e.yAxis[0].value ); window.webkit.messageHandlers.eventz.postMessage(event.yAxis[0].value);}";

        NSString *event = @"function(e) { window.webkit.messageHandlers.eventz.postMessage(1);}";
    
    self.options = [self.options stringByReplacingOccurrencesOfString:@"\"{{eventz}}\"" withString:event];
    
    self.html = [self.html stringByReplacingOccurrencesOfString:@"{{options}}" withString:self.options?:@""];
}

@end
