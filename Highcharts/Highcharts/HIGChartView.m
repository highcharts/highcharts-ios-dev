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
#ifdef TRIAL
@property (nonatomic, strong) UILabel *trialLabel;
@property (nonatomic, strong) UIWindow *trialWindow;
#endif
@end

@implementation HIGChartView

+ (void)preload
{
    [HIGBundle preloadBundle:kHighchartsChartBundle];
}

- (void)reload
{
    [self loadChart];
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
//        self.webView.scrollView.scrollEnabled = NO;
        self.webView.navigationDelegate = self;
        
        self.webView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;

        [self addSubview:self.webView];
#ifdef TRIAL
        CGRect labelFrame = CGRectMake(frame.origin.x, frame.origin.y, frame.size.width, 300.0f);
        self.trialLabel = [[UILabel alloc] initWithFrame:labelFrame];
        [self.trialLabel setTextColor:[UIColor colorWithWhite:0.0 alpha:0.50]];
        [self.trialLabel setAutoresizingMask:UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight];
        [self.trialLabel setFont:[UIFont systemFontOfSize:46 weight:UIFontDescriptorTraitBold]];
        [self.trialLabel setText:@"TRIAL VERSION"];
        [self.trialLabel setTextAlignment:NSTextAlignmentCenter];
        [self addSubview:self.trialLabel];
        
        
        UIViewController *trialViewController = [[UIViewController alloc] init];
        [[trialViewController view] setBackgroundColor:[UIColor clearColor]];
        
        self.trialWindow = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
        [self.trialWindow setRootViewController:trialViewController];
        [self.trialWindow setBackgroundColor:[UIColor clearColor]];
        [self.trialWindow setWindowLevel:UIWindowLevelAlert + 1];
        [self.trialWindow makeKeyAndVisible];
        
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Highcharts for iOS" message:@"This is a free trial. Please contact us to access a fully licensed version of our charts at sales@highsoft.com" preferredStyle:UIAlertControllerStyleAlert];
        
        [alert addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
            
        }]];
        
        [trialViewController presentViewController:alert animated:YES completion:nil];
#endif

    }
    return self;
}

- (void)didMoveToSuperview
{
    [super didMoveToSuperview];
    
    [self loadChart];
}

- (void)loadChart
{
    self.plugins = @[];
    
    NSString *suffix = self.debug ? @".src.js" : @".js";
    
    // Load Highchart main scripts.
    [self.HTML prepareJavaScript:@"highcharts" prefix:@"js/" suffix:suffix];
    [self.HTML prepareJavaScript:@"highcharts-more" prefix:@"js/" suffix:suffix];
    [self.HTML prepareJavaScript:@"highcharts-3d" prefix:@"js/" suffix:suffix];
    
    // If Module is needed in chart to work is loaded here.
    NSArray *plugins = [HIGDependency pluginsForOptions:self.options];
    
    self.plugins = [self.plugins arrayByAddingObjectsFromArray:plugins];
    
    self.plugins = [self.plugins arrayByAddingObjectsFromArray: @[ @"exporting", @"offline-exporting" ] ];
    
    self.plugins = [[NSOrderedSet orderedSetWithArray:self.plugins] array];
    
    // Load Array of modules user added.
    for (NSString *plugin in self.plugins) {
        [self.HTML prepareJavaScript:plugin prefix:@"js/modules/" suffix:suffix];
    }
    
    // Load theme js, only one.
    [self.HTML prepareJavaScript:self.theme?:nil prefix:@"js/themes/" suffix:@".js"];
    
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
    
    decisionHandler(WKNavigationActionPolicyAllow);
}

@end
