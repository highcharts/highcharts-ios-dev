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
#import "HIGDependency.h"

#define kHighchartsChartBundle @"com.highcharts.charts.bundle"

@interface HIGChartView () <WKNavigationDelegate>
@property (nonatomic, strong) WKWebView *webView;
@property (nonatomic, strong) NSBundle *highchartsBundle;
@property (nonatomic, strong) HIGHTML *HTML;
@end

@implementation HIGChartView

+ (void)preload
{
    [HIGBundle preloadBundle:kHighchartsChartBundle];
}

- (void)reload
{
    [self loadChartOptions];
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {

        self.highchartsBundle = [HIGBundle bundle:kHighchartsChartBundle];
        
        self.HTML = [[HIGHTML alloc] init];
        
        self.HTML.baseURL = [self.highchartsBundle bundlePath];
        
        [self.HTML loadHTML:[self.highchartsBundle pathForResource:@"highcharts" ofType:@"html"]];
        
        NSAssert(self.HTML.html, @"Highcharts HTML was not found!");
        
        if (!self.HTML.html) {
            return nil;
        }
        
        self.webView = [[WKWebView alloc] initWithFrame:frame];
        self.webView.scrollView.scrollEnabled = NO;
        self.webView.multipleTouchEnabled = NO;
        self.webView.navigationDelegate = self;
        self.webView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        [self addSubview:self.webView];
    }
    return self;
}

- (void)didMoveToSuperview
{
    [super didMoveToSuperview];
    
    [self loadChartHtml];
}

- (void)loadChartHtml
{
    [self.HTML prepareViewWidth:self.bounds.size.width height:self.bounds.size.height];
    
    if (!self.plugins) {
        self.plugins = @[];
    }
    
    NSString *suffix = self.debug ? @".src.js" : @".js";
    
    // Load Highchart main scripts.
    [self.HTML prepareJavaScript:@"highcharts" prefix:@"js/" suffix:suffix];
    [self.HTML prepareJavaScript:@"highcharts-more" prefix:@"js/" suffix:suffix];
    [self.HTML prepareJavaScript:@"highcharts-3d" prefix:@"js/" suffix:suffix];
    
    // If Module is needed in chart to work is loaded here.
    NSArray *plugins = [HIGDependency pluginsForOptions:[self.options getParams]];
    
    self.plugins = [self.plugins arrayByAddingObjectsFromArray:plugins];
    
    self.plugins = [self.plugins arrayByAddingObjectsFromArray: @[ @"exporting", @"offline-exporting", @"offline-exporting-wrap" ] ];
    
    self.plugins = [[NSOrderedSet orderedSetWithArray:self.plugins] array];
    
    // Load Array of modules user added.
    for (NSString *plugin in self.plugins) {
        [self.HTML prepareJavaScript:plugin prefix:@"js/modules/" suffix:suffix];
    }
    
    // Load theme js, only one.
    [self.HTML prepareJavaScript:self.theme?:nil prefix:@"js/themes/" suffix:@".js"];
    
    [self.HTML prepareOptions:[self.options getParams]];
    
    [self.HTML injectJavaScriptToHTML];
    
    [self.webView loadHTMLString:self.HTML.html baseURL:[self.highchartsBundle bundleURL]];
}

- (void)loadChartOptions
{
    [self.HTML prepareOptions:[self.options getParams]];
    
    NSString *options = [NSString stringWithFormat:@"var chart = new Highcharts.Chart(%@)", self.HTML.options];
        
    [self.webView evaluateJavaScript:options completionHandler:^(id result, NSError *error){
        if (error) {
            NSLog(@"%@", error);
        }
    }];
}

- (void)webView:(WKWebView *)webView decidePolicyForNavigationAction:(WKNavigationAction *)navigationAction decisionHandler:(void (^)(WKNavigationActionPolicy))decisionHandler
{
    NSURL *url = navigationAction.request.URL;
    
    // Open taped link in external browser.
    if ([url.scheme isEqualToString:@"http"]) {
        BOOL openExternalPage = navigationAction.navigationType == WKNavigationTypeOther;
        if (openExternalPage) {
            [[UIApplication sharedApplication] openURL:url];
        }
    }
    
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
    
    decisionHandler(WKNavigationActionPolicyAllow);
}

@end
