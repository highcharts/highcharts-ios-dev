//
//  HIGView.m
//  Highcharts
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import "HIGView_Private.h"
#import <WebKit/WebKit.h>
#import "HIGChart_Private.h"

@interface HIGView ()
@property (nonatomic, strong) WKWebView *webView;
@property (nonatomic, strong) NSBundle *highchartsBundle;
@property (nonatomic, strong) NSString *HTML;
@end

@implementation HIGView

- (instancetype)initWithFrame:(CGRect)frame bundle:(NSString*)bundle
{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.highchartsBundle = [NSBundle bundleWithPath:[[NSBundle mainBundle] pathForResource:bundle ofType:@"bundle"]];
        
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
        self.webView.scrollView.scrollEnabled = NO;
        
        self.webView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        
        [self addSubview:self.webView];
    }
    return self;
}

- (void)loadHighcharts:(NSString *)highcharts
{
    NSAssert(highcharts, @"Highcharts script was not found!");
    
    NSString *HTMLString = [self.HTML stringByReplacingOccurrencesOfString:@"{highcharts}" withString:highcharts];
    
    [self.webView loadHTMLString:HTMLString baseURL:[self.highchartsBundle bundleURL]];
}

@end
