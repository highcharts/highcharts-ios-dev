//
//  HIChartView.m
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
#import "HIFunctionSubclass.h"

#define kHighchartsChartBundle @"com.highcharts.charts.bundle"

@interface HIChartView () <WKNavigationDelegate, WKScriptMessageHandler>
@property (nonatomic, strong) WKWebView *webView;
@property (nonatomic, strong) NSBundle *highchartsBundle;
@property (nonatomic, strong) HIGHTML *HTML;
@property (nonatomic, weak) NSTimer *reloadTimer;
@property (nonatomic, strong) NSMutableDictionary *closures;
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
    
    WKUserContentController *controller = [[WKUserContentController alloc] init];
    [controller addScriptMessageHandler:self name:@"observe"];
    
    WKWebViewConfiguration *configuration = [[WKWebViewConfiguration alloc] init];
    configuration.userContentController = controller;
    
    self.closures = [[NSMutableDictionary alloc] init];
    
    self.webView = [[WKWebView alloc] initWithFrame:frame configuration:configuration];
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

- (void)dealloc
{
    [self removeObserver:self forKeyPath:@"options.isUpdated"];
}

- (void)didMoveToSuperview {
    [super didMoveToSuperview];
    [self loadChartInternal];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    [self resize];
}

#pragma mark - Helpers

- (void)prepareHIObjects:(NSMutableDictionary *)params {
    NSMutableDictionary *objects = [[NSMutableDictionary alloc] init];
    for (id key in params){
        id value = [params objectForKey:key];
        if([value isKindOfClass:[NSDictionary class]]){
            [self prepareHIObjects:value];
        }
        else if ([value isKindOfClass:[NSArray class]]) {
            for (id item in value) {
                if([item isKindOfClass:[NSMutableDictionary class]]){
                    [self prepareHIObjects:item];
                }
                else break;
            }
        }
        else if ([value isKindOfClass:[HIFunction class]]) {
            HIFunction *function = (HIFunction *)value;
            [objects setObject:function.function forKey:key];
            if (function.closure) {
                self.closures[function.uuid] = function.closure;
            }
        }
        else if ([value isKindOfClass:[HIColor class]]) {
            HIColor *color = (HIColor *)value;
            [objects setObject:[color getData] forKey:key];
        }
    }
    
    for(id key in objects) {
        id value = [objects objectForKey:key];
        [params removeObjectForKey:key];
        [params setObject:value forKey:key];
    }
}

- (void)prepareHTML:(NSDictionary *)options {
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
    [self.HTML prepareOptions:options];
    [self.HTML injectJavaScriptToHTML];
}

- (void)updateOptions {
    NSMutableDictionary *options = [[self.options getParams] mutableCopy];
    [self prepareHIObjects:options];
    [self.HTML prepareOptions:options];
    NSString *modificationString = [NSString stringWithFormat:@"updateOptions(%@);", self.HTML.options];
    [self.webView evaluateJavaScript:modificationString completionHandler:nil];
}

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
    
    NSMutableDictionary *options = [[self.options getParams] mutableCopy];
    
    // Prepare HI objects from options.
    [self prepareHIObjects:options];
    
    // Prepare HTML with options.
    [self prepareHTML:options];
    
    // Load HTML
    [self.webView loadHTMLString:self.HTML.html baseURL:[self.highchartsBundle bundleURL]];
}

- (void) loadJSONOptions:(NSDictionary *)jsonOptions {
    if (!jsonOptions) {
        return;
    }
    
    NSMutableDictionary *options = [self recursiveMutableCopy:jsonOptions];
    
    // Prepare HI objects from options.
    [self prepareHIObjects:options];
    
    // Prepare HTML with options.
    [self prepareHTML:options];
    
    // Load HTML
    [self.webView loadHTMLString:self.HTML.html baseURL:[self.highchartsBundle bundleURL]];
}

#pragma mark - NSKeyValueObserving

+ (BOOL)automaticallyNotifiesObserversForKey:(NSString *)key {
    return NO;
}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    if ([keyPath isEqualToString:@"options.isUpdated"]) {
        NSString *kChangeNew = [change valueForKey:@"new"];
        BOOL value = kChangeNew.boolValue;
        if (value) {
            [self updateOptions];
        }
    }
}

#pragma mark - Setters / Getters

- (void)setOptions:(HIOptions *)options {
    if (self.options) {
        [self removeObserver:self forKeyPath:@"options.isUpdated"];
    }
    [self willChangeValueForKey:@"options"];
    _options = options;
    [self loadChartInternal];
    [self didChangeValueForKey:@"options"];
    if (options) {
        [self addObserver:self forKeyPath:@"options.isUpdated" options:NSKeyValueObservingOptionNew context:NULL];
    }
}

- (void)setTheme:(NSString *)theme
{
    [self willChangeValueForKey:@"theme"];
    _theme = theme;
    [self loadChartInternal];
    [self didChangeValueForKey:@"theme"];
}

- (void)setLang:(HILang *)lang
{
    [self willChangeValueForKey:@"lang"];
    _lang = lang;
    [self loadChartInternal];
    [self didChangeValueForKey:@"lang"];
}

- (void)setGlobal:(HIGlobal *)global
{
    [self willChangeValueForKey:@"global"];
    _global = global;
    [self loadChartInternal];
    [self didChangeValueForKey:@"global"];
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

#pragma mark - WKScriptMessageHandler

- (void)userContentController:(WKUserContentController *)userContentController didReceiveScriptMessage:(WKScriptMessage *)message {
    if ([message.name isEqualToString:@"observe"]) {
        NSString *closureID = message.body[@"uuid"];
        
        if (closureID) {
            NSDictionary *dictionary = (NSDictionary *)message.body;
    
            HIChartContext *context = [[HIChartContext alloc] initWithContext:dictionary];
            
            HIClosure closure = (HIClosure)self.closures[closureID];
            closure(context);
        }
    }
}

#pragma mark - NSMutableCopying recursively

- (id) recursiveMutableCopy:(id)object {
    if ([object isKindOfClass:[NSDictionary class]]) {
        NSMutableDictionary* dict = [NSMutableDictionary dictionaryWithDictionary:object];
        for (NSString* key in [dict allKeys]) {
            [dict setObject:[self recursiveMutableCopy:[dict objectForKey:key]] forKey:key];
        }
        return dict;
    }
    else if ([object isKindOfClass:[NSArray class]]) {
        NSMutableArray* array = [NSMutableArray arrayWithArray:object];
        for (int i = 0; i < [array count]; i++) {
            [array replaceObjectAtIndex:i withObject:[self recursiveMutableCopy:[array objectAtIndex:i]]];
        }
        return array;
    }
    else if ([object isKindOfClass:[NSString class]])
        return [NSMutableString stringWithString:object];
    return object;
}

#pragma mark - Deprecated

- (void)setDebug:(BOOL)debug {}
- (BOOL)debug { return NO; }
- (void)reload { [self loadChartInternal]; }
- (void)loadChart { [self loadChartInternal]; }

@end
