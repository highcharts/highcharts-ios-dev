//
//  HIGView.m
//  Highcharts
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import "HIGChartView.h"
#import <WebKit/WebKit.h>
#import "HIGBundle.h"
#import "HIGHTML.h"
#import "HIGProtocol.h"

#define kHighchartsChartBundle @"com.highcharts.charts.bundle"

@interface HIGChartView () <WKNavigationDelegate, WKScriptMessageHandler>
@property (nonatomic, strong) WKWebView *webView;
@property (nonatomic, strong) NSBundle *highchartsBundle;
@property (nonatomic, strong) HIGHTML *HTML;
@end

@implementation HIGChartView

+ (void)preload
{
    [HIGBundle preloadBundle:kHighchartsChartBundle];
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        WKWebViewConfiguration *configuration = [[WKWebViewConfiguration alloc]
                                                 init];
        WKUserContentController *controller = [[WKUserContentController alloc]
                                               init];
        
        [controller addScriptMessageHandler:self name:@"formatter"];
        [controller addScriptMessageHandler:self name:@"eventz"];
        configuration.userContentController = controller;
        
        self.highchartsBundle = [HIGBundle bundle:kHighchartsChartBundle];
        
        self.HTML = [[HIGHTML alloc] init];
        
        self.HTML.baseURL = [self.highchartsBundle bundlePath];
        
        [self.HTML loadHTML:[self.highchartsBundle pathForResource:@"highcharts" ofType:@"html"]];
        
        NSAssert(self.HTML.html, @"Highcharts HTML was not found!");
        
        if (!self.HTML.html) {
            return nil;
        }
        
        self.webView = [[WKWebView alloc] initWithFrame:frame configuration:configuration];
//        self.webView.scrollView.scrollEnabled = NO;
        self.webView.navigationDelegate = self;
        
        self.webView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        
        [self addSubview:self.webView];
    }
    return self;
}

- (void)didMoveToSuperview
{
    [super didMoveToSuperview];
    
    NSString *suffix = self.debug ? @".src.js" : @".js";
    
    [self.HTML prepareJavaScript:@[@"highcharts"] prefix:@"js/" suffix:suffix];
    [self.HTML prepareJavaScript:self.plugins prefix:@"js/modules/" suffix:suffix];
    [self.HTML prepareJavaScript:self.theme?@[self.theme]:nil prefix:@"js/themes/" suffix:@".js"];
    
    [self.HTML prepareOptions:self.options];
    
    [self.HTML injectJavaScriptToHTML];
    
    [self.webView loadHTMLString:self.HTML.html baseURL:[self.highchartsBundle bundleURL]];
}

- (void)webView:(WKWebView *)webView decidePolicyForNavigationAction:(WKNavigationAction *)navigationAction decisionHandler:(void (^)(WKNavigationActionPolicy))decisionHandler
{
    NSURL *url = navigationAction.request.URL;
    
    if ([url.scheme isEqualToString:@"hig"]) {
        decisionHandler(WKNavigationActionPolicyCancel);
        
        NSString *HIGClass = [NSString stringWithFormat:@"HIG%@", [url.host capitalizedString]];
        
        if (HIGClass) {
            NSString *jsonString = [url.fragment stringByReplacingPercentEscapesUsingEncoding:NSASCIIStringEncoding];
            NSData *jsonData = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
            NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:jsonData options:0 error:nil];
            
            id <HIGProtocol> hig = [[NSClassFromString(HIGClass) alloc] init];
            
            hig.viewController = self.viewController;
            
            [hig response:dict];
        }
        
        return;
    }
    
    if ([url.scheme isEqualToString:@"formatter"]) {
        decisionHandler(WKNavigationActionPolicyCancel);
        

            NSString *jsonString = [url.fragment stringByReplacingPercentEscapesUsingEncoding:NSASCIIStringEncoding];
            NSData *jsonData = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
            NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:jsonData options:0 error:nil];
            
            NSLog(@"A : %@", dict);

        return;
    }
    
    decisionHandler(WKNavigationActionPolicyAllow);
}

- (void)userContentController:(WKUserContentController *)userContentController didReceiveScriptMessage:(WKScriptMessage *)message {
    
    if ([message.name isEqualToString:@"eventz"]) {
        NSLog(@"Received event %@", message.body);
        
        NSString *exec_template = @"chart.series[0].addPoint(12);";
        NSString *exec = [NSString stringWithFormat:exec_template, @1];
        
        [self.webView evaluateJavaScript:exec completionHandler:nil];
    }
    
    if ([message.name isEqualToString:@"formatter"]) {
        NSLog(@"Received event %@", message.body);
        
    }
}

@end
