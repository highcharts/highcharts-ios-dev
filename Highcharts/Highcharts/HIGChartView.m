//
//  HIGView.m
//  Highcharts
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import "HIGChartView.h"
#import "HIGCommon.h"
#import <WebKit/WebKit.h>
#import "HIGBundle.h"
#import "HIGHTML.h"

@interface HIGChartView ()
@property (nonatomic, strong) WKWebView *webView;
@property (nonatomic, strong) NSBundle *highchartsBundle;
@property (nonatomic, strong) HIGHTML *HTML;
@end

@implementation HIGChartView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.highchartsBundle = [HIGBundle prepareBundle:kHighchartsChartBundle];
        
        self.HTML = [[HIGHTML alloc] init];
        
        [self.HTML loadHTML:[self.highchartsBundle pathForResource:@"highcharts" ofType:@"html"]];
        
        NSAssert(self.HTML.html, @"Highcharts HTML was not found!");
        
        if (!self.HTML.html) {
            return nil;
        }
        
        self.webView = [[WKWebView alloc] initWithFrame:frame];
        self.webView.scrollView.scrollEnabled = NO;
        
        self.webView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        
        [self addSubview:self.webView];
    }
    return self;
}

- (void)didMoveToSuperview
{
    [super didMoveToSuperview];
    
    NSString *suffix = self.debug ? @".src.js" : @".js";
    
    [self.HTML prepareJavaScript:@[@"highcharts"] prefix:nil suffix:suffix];
    [self.HTML prepareJavaScript:self.plugins prefix:@"js/modules/" suffix:suffix];
    [self.HTML prepareJavaScript:self.theme?@[self.theme]:nil prefix:@"js/themes/" suffix:nil];
    
    
    [self.HTML prepareOptions:self.options];
    
    [self.HTML injectJavaScriptToHTML];
    
    [self.webView loadHTMLString:self.HTML.html baseURL:[self.highchartsBundle bundleURL]];
}

@end
