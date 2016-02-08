//
//  HIGChartViewJS.m
//  Highcharts
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import "HIGChartViewJS.h"
#import <WebKit/WebKit.h>

NSString * const kHighchartsChartBundleJS = @"com.highcharts.chartsjs.bundle";

@interface HIGChartViewJS ()
@property (nonatomic, strong) WKWebView *webView;
@property (nonatomic, strong) NSBundle *highchartsBundle;
@property (nonatomic, strong) NSString *HTML;

@property (strong, nonatomic, readwrite) NSString *js;
@end

@implementation HIGChartViewJS

- (instancetype)initWithFrame:(CGRect)frame js:(NSString*)js
{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.js = js;
        
        NSBundle *frameworkBundle = [NSBundle bundleForClass:[self class]];
        
        NSString *tmpBundle = [frameworkBundle pathForResource:kHighchartsChartBundleJS ofType:nil];
        
        NSString *tmpLiblary = NSTemporaryDirectory();
        tmpLiblary = [tmpLiblary stringByAppendingPathComponent:kHighchartsChartBundleJS];
        
        NSError *error = nil;
        if ([[NSFileManager defaultManager] fileExistsAtPath:tmpLiblary]) {
            if (![[NSFileManager defaultManager] removeItemAtPath:tmpLiblary error:&error]) {
                NSLog(@"Error copying files: %@", [error localizedDescription]);
            }
        }
        
        if (![[NSFileManager defaultManager] copyItemAtPath:tmpBundle toPath:tmpLiblary error:&error]) {
            NSLog(@"Error copying files: %@", [error localizedDescription]);
        }
        
        self.highchartsBundle = [NSBundle bundleWithPath:tmpLiblary];
        
        NSAssert(self.highchartsBundle, @"Highcharts bundle was not found!");
        if (!self.highchartsBundle) {
            return nil;
        }
        
        NSString *HTMLPath = [self.highchartsBundle pathForResource:@"highcharts" ofType:@"html"];
        
        self.HTML = [NSString stringWithContentsOfFile:HTMLPath encoding:NSUTF8StringEncoding error:nil];
        
        NSAssert(self.HTML, @"Highcharts HTML was not found!");
        if (!self.HTML) {
            return nil;
        }
        
        self.webView = [[WKWebView alloc] initWithFrame:frame];
        
        self.webView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        
        [self addSubview:self.webView];
    }
    return self;
}

- (void)didMoveToSuperview
{
    [super didMoveToSuperview];
    
    [self loadHighcharts:self.js];
}

- (void)loadHighcharts:(NSString *)highcharts
{
    NSAssert(highcharts, @"Highcharts script was not found!");
    
    NSString *HTMLString = [self.HTML stringByReplacingOccurrencesOfString:@"{highcharts}" withString:highcharts];
    
    [self.webView loadHTMLString:HTMLString baseURL:[self.highchartsBundle bundleURL]];
}

@end
