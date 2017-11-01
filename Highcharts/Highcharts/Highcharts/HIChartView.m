//
//  HIGView.m
//  Highcharts
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import "HIChartView.h"
#import <WebKit/WebKit.h>
#import "HIGBundle.h"
#import "HIGHTML.h"
#import "HIGDependency.h"
#import "HIGExport.h"

#define kHighchartsChartBundle @"com.highcharts.charts.bundle"

@interface HIChartView () <WKNavigationDelegate>
@property (nonatomic, strong) WKWebView *webView;
@property (nonatomic, strong) NSBundle *highchartsBundle;
@property (nonatomic, strong) HIGHTML *HTML;
@property (nonatomic, weak) NSTimer *reloadTimer;

@end

static BOOL preloaded = NO;

@implementation HIChartView

+ (void)preload
{
    if (!preloaded) [HIGBundle preloadBundle:kHighchartsChartBundle];
    preloaded = YES;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    [self.class preload];
    self = [super initWithFrame:frame];
    if (self) {
        [self setupWithFrame:self.bounds];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    [self.class preload];
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self setupWithFrame:self.bounds];
    }
    return self;
}

- (instancetype)init {
    [self.class preload];
    self = [super init];
    if (self) {
        [self setupWithFrame:CGRectZero];
    }
    return self;
}

- (void) setupWithFrame: (CGRect) frame
{
    self.layoutMargins = UIEdgeInsetsZero;
    self.preservesSuperviewLayoutMargins = NO;
    self.highchartsBundle = [HIGBundle bundle:kHighchartsChartBundle];
    
    self.HTML = [[HIGHTML alloc] init];
    
    self.HTML.baseURL = [self.highchartsBundle bundlePath];
    
    [self.HTML loadHTML:[self.highchartsBundle pathForResource:@"highcharts" ofType:@"html"]];
    
    NSAssert(self.HTML.html, @"Highcharts HTML was not found!");
    
    self.webView = [[WKWebView alloc] initWithFrame:frame];
    self.webView.scrollView.scrollEnabled = NO;
    self.webView.multipleTouchEnabled = NO;
    self.webView.navigationDelegate = self;
    [self addSubview:self.webView];
    self.webView.translatesAutoresizingMaskIntoConstraints = NO;
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-[v]-|" options:0 metrics:nil views:@{@"v":self.webView}]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-[v]-|" options:0 metrics:nil views:@{@"v":self.webView}]];
    self.webView.opaque = NO;
    self.webView.backgroundColor = [UIColor clearColor];
    self.webView.scrollView.backgroundColor = [UIColor clearColor];
    self.webView.scrollView.opaque = NO;
}


- (void)didMoveToSuperview {
    [super didMoveToSuperview];
    [self loadChartInternal];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    [self resize];
}

#pragma mark - Setters / Getters

- (void)setOptions:(HIOptions *)options {
    [self willChangeValueForKey:@"options"];
    _options = options;
    [self loadChartInternal];
    [self didChangeValueForKey:@"options"];
}

- (void)setTheme:(NSString *)theme
{
    [self willChangeValueForKey:@"theme"];
    _theme = theme;
    [self loadChartInternal];
    [self didChangeValueForKey:@"theme"];
}


#pragma mark - Helpers

- (void) resize {
    NSString *modificationString = [NSString stringWithFormat:@"modifySize(%f, %f);", CGRectGetWidth(self.webView.bounds), CGRectGetHeight(self.webView.bounds)];
    [self.webView evaluateJavaScript:modificationString completionHandler:nil];
}


- (void) loadChartInternal {
    if(self.reloadTimer) return;
    self.reloadTimer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(loadChartWorker) userInfo:nil repeats:NO];
}

- (void) loadChartWorker {
    if (!self.options) {
        return;
    }
    
    [self.HTML prepareViewWidth:CGRectGetWidth(self.webView.bounds) height: CGRectGetHeight(self.webView.bounds)];
    
    if (!self.plugins) {
        self.plugins = @[];
    }
    
    if (!self.lang) {
        self.lang = [[HILang alloc] init];
    }
    
    if (!self.global) {
        self.global = [[HIGlobal alloc] init];
    }
    
    // Load Highchart main scripts.
    [self.HTML prepareJavaScript:@"highcharts" prefix:@"js/" suffix:@".js"];
    [self.HTML prepareJavaScript:@"highcharts-more" prefix:@"js/" suffix:@".js"];
    [self.HTML prepareJavaScript:@"highcharts-3d" prefix:@"js/" suffix:@".js"];
    
    // If Module is needed in chart to work is loaded here.
    NSArray *plugins = [HIGDependency pluginsForOptions:[self.options getParams]];
    
    self.plugins = [self.plugins arrayByAddingObjectsFromArray:plugins];
    
    self.plugins = [self.plugins arrayByAddingObjectsFromArray: @[ @"exporting", @"offline-exporting", @"offline-exporting-wrap", @"accessibility", @"boost", @"data", @"drilldown"] ];
    
    self.plugins = [[NSOrderedSet orderedSetWithArray:self.plugins] array];
    
    // Load Array of modules user added.
    for (NSString *plugin in self.plugins) {
        [self.HTML prepareJavaScript:plugin prefix:@"js/modules/" suffix:@".js"];
    }
    
    // Load theme js, only one.
    [self.HTML prepareJavaScript:self.theme?:nil prefix:@"js/themes/" suffix:@".js"];
    [self.HTML prepareLang:[self.lang getParams] Global:[self.global getParams]];
    [self.HTML prepareOptions:[self.options getParams]];
    [self.HTML injectJavaScriptToHTML];
    
    [self.webView loadHTMLString:self.HTML.html baseURL:[self.highchartsBundle bundleURL]];
}

#pragma mark - WKWebViewDelegate

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
    
    if ([url.scheme isEqualToString:@"data"]) {
        decisionHandler(WKNavigationActionPolicyCancel);
        
        HIGExport *export = [[HIGExport alloc] init];
        export.viewController = self.viewController;
        
        [export response:url.absoluteString];
        
        return;
    }
    
    decisionHandler(WKNavigationActionPolicyAllow);
}

- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation {
    [self resize];
    if ([self.delegate respondsToSelector:@selector(chartViewDidLoad:)]) [self.delegate chartViewDidLoad:self];
}

#pragma mark - Deprecated

- (void)setDebug:(BOOL)debug {}
- (BOOL)debug { return NO; }
- (void)reload { [self loadChartInternal]; }
- (void)loadChart { [self loadChartInternal]; }

@end
