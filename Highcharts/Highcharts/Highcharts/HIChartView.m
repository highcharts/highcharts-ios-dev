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
#import "HIClassJSMethods.h"
#import "HIFunctionSubclass.h"
#import "HIChartsJSONSerializableSubclass.h"
#import "HICustomFont.h"

#define kHighchartsChartBundle @"com.highcharts.charts.bundle"

@interface HIChartView () <WKNavigationDelegate, WKScriptMessageHandler>
@property (nonatomic, strong) WKWebView *webView;
@property (nonatomic, strong) HIGHTML *HTML;
@property (nonatomic, weak) NSTimer *reloadTimer;
@property (nonatomic, strong) NSMutableDictionary *closures;
@property (nonatomic, strong) NSArray *additionalPlugins;
@end

static BOOL preloaded = NO;
static NSBundle *highchartsBundle = nil;

@implementation HIChartView

+ (void)preload
{
    if (!preloaded) {
        [HIGBundle preloadBundle:kHighchartsChartBundle];
        highchartsBundle = [HIGBundle bundle:kHighchartsChartBundle];
    }
    preloaded = YES;
}

+ (void)addFont:(NSString *)path {
    [self.class preload];
    [HICustomFont addFont:path bundle:highchartsBundle];
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
    if (highchartsBundle == nil) highchartsBundle = [HIGBundle bundle:kHighchartsChartBundle];
    
    self.additionalPlugins = @[ @"exporting", @"offline-exporting", @"accessibility", @"boost", @"data", @"drilldown" ];
    
    self.HTML = [[HIGHTML alloc] init];
    
    self.HTML.baseURL = [highchartsBundle bundlePath];
    
    [self.HTML loadHTML:[highchartsBundle pathForResource:@"highcharts" ofType:@"html"]];
    
    NSAssert(self.HTML.html, @"Highcharts HTML was not found!");
    
    WKUserContentController *controller = [[WKUserContentController alloc] init];
    [controller addScriptMessageHandler:self name:@"observe"];
    [controller addScriptMessageHandler:self name:@"exporting"];
    
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
    [self removeObserver:self forKeyPath:@"options.jsClassMethod"];
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
    [self.HTML prepareScripts];
    [self.HTML prepareJavaScript:@"highcharts" prefix:@"js/" suffix:@".js"];
    [self.HTML prepareJavaScript:@"highcharts-more" prefix:@"js/" suffix:@".js"];
    [self.HTML prepareJavaScript:@"highcharts-3d" prefix:@"js/" suffix:@".js"];
    
    // If Module is needed in chart to work is loaded here.
    NSArray *plugins = [HIGDependency pluginsForOptions:[self.options getParams]];
    
    self.plugins = [self.plugins arrayByAddingObjectsFromArray:plugins];
    
    self.plugins = [self.additionalPlugins arrayByAddingObjectsFromArray:self.plugins];
    
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
    [self.webView loadHTMLString:self.HTML.html baseURL:[highchartsBundle bundleURL]];
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
    [self.webView loadHTMLString:self.HTML.html baseURL:[highchartsBundle bundleURL]];
}

- (void) callJSMethod:(NSDictionary *)dict {
    NSString *jsMethod = [HIClassJSMethods getJSClassMethodString:dict];
    
    if (jsMethod.length) {
        [self.webView evaluateJavaScript:jsMethod completionHandler:nil];
    }
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
    else if ([keyPath isEqualToString:@"options.jsClassMethod"]) {
        NSDictionary *kChangeNew = [change valueForKey:@"new"];
        [self callJSMethod:kChangeNew];
    }
}

#pragma mark - Setters / Getters

- (void)setOptions:(HIOptions *)options {
    if (self.options) {
        [self removeObserver:self forKeyPath:@"options.isUpdated"];
        [self removeObserver:self forKeyPath:@"options.jsClassMethod"];
    }
    [self willChangeValueForKey:@"options"];
    _options = options;
    [self loadChartInternal];
    [self didChangeValueForKey:@"options"];
    if (options) {
        [self addObserver:self forKeyPath:@"options.isUpdated" options:NSKeyValueObservingOptionNew context:NULL];
        [self addObserver:self forKeyPath:@"options.jsClassMethod" options:NSKeyValueObservingOptionNew context:NULL];
    }
}

- (void)setTheme:(NSString *)theme {
    [self willChangeValueForKey:@"theme"];
    _theme = theme;
    [self didChangeValueForKey:@"theme"];
}

- (void)setLang:(HILang *)lang {
    [self willChangeValueForKey:@"lang"];
    _lang = lang;
    [self didChangeValueForKey:@"lang"];
}

- (void)setGlobal:(HIGlobal *)global {
    [self willChangeValueForKey:@"global"];
    _global = global;
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
    else if ([message.name isEqualToString:@"exporting"]) {
        NSString *messageBody = message.body;
        
        if ([messageBody isEqualToString:@"exportButtonPressed"]) {
            if ([self.plugins containsObject:@"export-data"]) {
                [self showExportingActionSheet];
            }
            else {
                [self.webView evaluateJavaScript:@"shareChart(\"image\");" completionHandler:nil];
            }
        }
        else if ([messageBody hasPrefix:@"data:text/csv"]) {
            HIGExport *export = [[HIGExport alloc] init];
            export.viewController = self.viewController;
            
            [export response:messageBody];
        }
    }
}

#pragma mark - Exporting Action Sheet

- (void)showExportingActionSheet {
    UIAlertController *actionSheet = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    
    if ([actionSheet respondsToSelector:@selector(popoverPresentationController)]) {
        actionSheet.popoverPresentationController.sourceView = self.viewController.view;
        actionSheet.popoverPresentationController.sourceRect = CGRectMake(self.viewController.view.center.x, self.viewController.view.center.x , 0, 0);
    }
    
    NSString *shareImageTitle = @"Share image";
    if (self.lang.downloadPNG) {
        shareImageTitle = self.lang.downloadPNG;
    }
    else if (self.lang.downloadJPEG) {
        shareImageTitle = self.lang.downloadJPEG;
    }
    
    UIAlertAction *shareImageActtion = [UIAlertAction actionWithTitle:shareImageTitle style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        [self.webView evaluateJavaScript:@"shareChart(\"image\");" completionHandler:nil];
    }];
    
    UIAlertAction *sharePDFAction = [UIAlertAction actionWithTitle:self.lang.downloadPDF ? self.lang.downloadPDF : @"Share PDF" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        [self.webView evaluateJavaScript:@"shareChart(\"pdf\");" completionHandler:nil];
    }];
    
    UIAlertAction *shareCSVAction = [UIAlertAction actionWithTitle:self.lang.downloadCSV ? self.lang.downloadCSV : @"Share CSV" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        [self.webView evaluateJavaScript:@"shareChart(\"csv\");" completionHandler:nil];
    }];
    
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:self.lang.cancelButtonTitle ? self.lang.cancelButtonTitle : @"Cancel" style:UIAlertActionStyleCancel handler:nil];
    
    [actionSheet addAction:shareImageActtion];
    [actionSheet addAction:sharePDFAction];
    [actionSheet addAction:shareCSVAction];
    [actionSheet addAction:cancelAction];
    
    [self.viewController presentViewController:actionSheet animated:YES completion:nil];
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

#pragma mark - JS methods

- (void)addAnnotation:(HIAnnotations *)options {
    NSDictionary *chartMethod = @{ @"class" : @"Chart", @"method" : @"addAnnotation0", @"params" : @[[options getParams]] };
    [self callJSMethod:chartMethod];
}

- (void)addAnnotation:(HIAnnotations *)options redraw:(NSNumber *)redraw {
    NSDictionary *chartMethod = @{ @"class" : @"Chart", @"method" : @"addAnnotation1", @"params" : @[[options getParams], redraw] };
    [self callJSMethod:chartMethod];
}

- (void)addXAxis:(HIXAxis *)options {
    NSDictionary *chartMethod = @{ @"class" : @"Chart", @"method" : @"addAxis0", @"params" : @[[options getParams], [[NSNumber alloc] initWithBool:true]] };
    [self callJSMethod:chartMethod];
}

- (void)addXAxis:(HIXAxis *)options redraw:(NSNumber *)redraw {
    NSDictionary *chartMethod = @{ @"class" : @"Chart", @"method" : @"addAxis1", @"params" : @[[options getParams], [[NSNumber alloc] initWithBool:true], redraw] };
    [self callJSMethod:chartMethod];
}

- (void)addXAxis:(HIXAxis *)options redraw:(NSNumber *)redraw animation:(HIAnimationOptionsObject *)animation {
    NSDictionary *chartMethod = @{ @"class" : @"Chart", @"method" : @"addAxis2", @"params" : @[[options getParams], [[NSNumber alloc] initWithBool:true], redraw, [animation getParams]] };
    [self callJSMethod:chartMethod];
}

- (void)addYAxis:(HIYAxis *)options {
    NSDictionary *chartMethod = @{ @"class" : @"Chart", @"method" : @"addAxis0", @"params" : @[[options getParams], [[NSNumber alloc] initWithBool:false]] };
    [self callJSMethod:chartMethod];
}

- (void)addYAxis:(HIYAxis *)options redraw:(NSNumber *)redraw {
    NSDictionary *chartMethod = @{ @"class" : @"Chart", @"method" : @"addAxis1", @"params" : @[[options getParams], [[NSNumber alloc] initWithBool:false], redraw] };
    [self callJSMethod:chartMethod];
}

- (void)addYAxis:(HIYAxis *)options redraw:(NSNumber *)redraw animation:(HIAnimationOptionsObject *)animation {
    NSDictionary *chartMethod = @{ @"class" : @"Chart", @"method" : @"addAxis2", @"params" : @[[options getParams], [[NSNumber alloc] initWithBool:false], redraw, [animation getParams]] };
    [self callJSMethod:chartMethod];
}

- (void)addCredits:(HICredits *)options {
    NSDictionary *chartMethod = @{ @"class" : @"Chart", @"method" : @"addCredits", @"params" : @[[options getParams]] };
    [self callJSMethod:chartMethod];
}

- (void)addSeries:(HISeries *)options {
    NSDictionary *chartMethod = @{ @"class" : @"Chart", @"method" : @"addSeries0", @"params" : @[[options getParams]] };
    [self callJSMethod:chartMethod];
}

- (void)addSeries:(HISeries *)options redraw:(NSNumber *)redraw {
    NSDictionary *chartMethod = @{ @"class" : @"Chart", @"method" : @"addSeries1", @"params" : @[[options getParams], redraw] };
    [self callJSMethod:chartMethod];
}

- (void)addSeries:(HISeries *)options redraw:(NSNumber *)redraw animation:(HIAnimationOptionsObject *)animation {
    NSDictionary *chartMethod = @{ @"class" : @"Chart", @"method" : @"addSeries2", @"params" : @[[options getParams], redraw, [animation getParams]] };
    [self callJSMethod:chartMethod];
}

- (void)addSeriesAsDrilldown:(HIPoint *)point options:(HISeries *)options {
    NSDictionary *chartMethod = @{ @"class" : @"Chart", @"method" : @"addSeriesAsDrilldown", @"params" : @[[point getParams], [options getParams]] };
    [self callJSMethod:chartMethod];
}

- (void)cancelSonify {
    NSDictionary *chartMethod = @{ @"class" : @"Chart", @"method" : @"cancelSonify0" };
    [self callJSMethod:chartMethod];
}

- (void)cancelSonify:(NSNumber *)fadeOut {
    NSDictionary *chartMethod = @{ @"class" : @"Chart", @"method" : @"cancelSonify1", @"params" : @[fadeOut] };
    [self callJSMethod:chartMethod];
}

- (void)destroy {
    NSDictionary *chartMethod = @{ @"class" : @"Chart", @"method" : @"destroy" };
    [self callJSMethod:chartMethod];
}

- (void)drillUp {
    NSDictionary *chartMethod = @{ @"class" : @"Chart", @"method" : @"drillUp" };
    [self callJSMethod:chartMethod];
}

- (void)hideLoading {
    NSDictionary *chartMethod = @{ @"class" : @"Chart", @"method" : @"hideLoading" };
    [self callJSMethod:chartMethod];
}

- (void)openInCloud {
    NSDictionary *chartMethod = @{ @"class" : @"Chart", @"method" : @"openInCloud" };
    [self callJSMethod:chartMethod];
}

- (void)pauseSonify {
    NSDictionary *chartMethod = @{ @"class" : @"Chart", @"method" : @"pauseSonify0" };
    [self callJSMethod:chartMethod];
}

- (void)pauseSonify:(NSNumber *)fadeOut {
    NSDictionary *chartMethod = @{ @"class" : @"Chart", @"method" : @"pauseSonify1", @"params" : @[fadeOut] };
    [self callJSMethod:chartMethod];
}

- (void)print {
    NSDictionary *chartMethod = @{ @"class" : @"Chart", @"method" : @"print" };
    [self callJSMethod:chartMethod];
}

- (void)redraw {
    NSDictionary *chartMethod = @{ @"class" : @"Chart", @"method" : @"redraw0" };
    [self callJSMethod:chartMethod];
}

- (void)redraw:(HIAnimationOptionsObject *)animation {
    NSDictionary *chartMethod = @{ @"class" : @"Chart", @"method" : @"redraw1", @"params" : @[[animation getParams]] };
    [self callJSMethod:chartMethod];
}

- (void)removeAnnotationById:(NSString *)id {
    NSDictionary *chartMethod = @{ @"class" : @"Chart", @"method" : @"removeAnnotation", @"params" : @[id] };
    [self callJSMethod:chartMethod];
}

- (void)removeAnnotation:(HIAnnotations *)annotation {
    NSDictionary *chartMethod = @{ @"class" : @"Chart", @"method" : @"removeAnnotation", @"params" : @[[annotation getParams]] };
    [self callJSMethod:chartMethod];
}

- (void)resetSonifyCursor {
    NSDictionary *chartMethod = @{ @"class" : @"Chart", @"method" : @"resetSonifyCursor" };
    [self callJSMethod:chartMethod];
}

- (void)resetSonifyCursorEnd {
    NSDictionary *chartMethod = @{ @"class" : @"Chart", @"method" : @"resetSonifyCursorEnd" };
    [self callJSMethod:chartMethod];
}

- (void)setSonifyCursorToPoint:(HIPoint *)point {
    NSDictionary *chartMethod = @{ @"class" : @"Chart", @"method" : @"setSonifyCursor", @"params" : @[[point getParams]] };
    [self callJSMethod:chartMethod];
}

- (void)setSonifyCursorToPoints:(NSArray<HIPoint *> *)points {
    NSMutableArray *array = [[NSMutableArray alloc] init];
    for (id obj in points) {
        if ([obj isKindOfClass: [HIChartsJSONSerializable class]]) {
            [array addObject:[(HIChartsJSONSerializable *)obj getParams]];
        }
        else {
            [array addObject: obj];
        }
    }
    NSDictionary *chartMethod = @{ @"class" : @"Chart", @"method" : @"setSonifyCursor", @"params" : @[array] };
    [self callJSMethod:chartMethod];
}

- (void)setSubtitle:(HISubtitle *)options {
    NSDictionary *chartMethod = @{ @"class" : @"Chart", @"method" : @"setSubtitle", @"params" : @[[options getParams]] };
    [self callJSMethod:chartMethod];
}

- (void)setTitle:(HITitle *)titleOptions subtitleOptions:(HISubtitle *)subtitleOptions redraw:(NSNumber *)redraw {
    NSDictionary *chartMethod = @{ @"class" : @"Chart", @"method" : @"setTitle", @"params" : @[[titleOptions getParams], [subtitleOptions getParams], redraw] };
    [self callJSMethod:chartMethod];
}

- (void)showLoading:(NSString *)str {
    NSDictionary *chartMethod = @{ @"class" : @"Chart", @"method" : @"showLoading", @"params" : @[str] };
    [self callJSMethod:chartMethod];
}

- (void)sonify:(NSDictionary *)options {
    NSDictionary *chartMethod = @{ @"class" : @"Chart", @"method" : @"showLoading", @"params" : @[options] };
    [self callJSMethod:chartMethod];
}

- (void)update:(HIOptions *)options {
    NSDictionary *chartMethod = @{ @"class" : @"Chart", @"method" : @"update0", @"params" : @[[options getParams]] };
    [self callJSMethod:chartMethod];
}

- (void)update:(HIOptions *)options redraw:(NSNumber *)redraw {
    NSDictionary *chartMethod = @{ @"class" : @"Chart", @"method" : @"update1", @"params" : @[[options getParams], redraw] };
    [self callJSMethod:chartMethod];
}

- (void)update:(HIOptions *)options redraw:(NSNumber *)redraw oneToOne:(NSNumber *)oneToOne {
    NSDictionary *chartMethod = @{ @"class" : @"Chart", @"method" : @"update2", @"params" : @[[options getParams], redraw, oneToOne] };
    [self callJSMethod:chartMethod];
}

- (void)update:(HIOptions *)options redraw:(NSNumber *)redraw oneToOne:(NSNumber *)oneToOne animation:(HIAnimationOptionsObject *)animation {
    NSDictionary *chartMethod = @{ @"class" : @"Chart", @"method" : @"update3", @"params" : @[[options getParams], redraw, oneToOne, [animation getParams]] };
    [self callJSMethod:chartMethod];
}

- (void)viewData {
    NSDictionary *chartMethod = @{ @"class" : @"Chart", @"method" : @"viewData" };
    [self callJSMethod:chartMethod];
}

- (void)zoomOut {
    NSDictionary *chartMethod = @{ @"class" : @"Chart", @"method" : @"zoomOut" };
    [self callJSMethod:chartMethod];
}

#pragma mark - Deprecated

- (void)setDebug:(BOOL)debug {}
- (BOOL)debug { return NO; }
- (void)reload { [self loadChartInternal]; }
- (void)loadChart { [self loadChartInternal]; }

@end
