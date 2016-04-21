//
//  HIGView.m
//  Highcharts
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import "HIGChartView.h"
#import <WebKit/WebKit.h>

NSString * const kHighchartsChartBundle = @"com.highcharts.charts.bundle";

@interface HIGChartView ()
@property (nonatomic, strong) WKWebView *webView;
@property (nonatomic, strong) NSBundle *highchartsBundle;
@property (nonatomic, strong) NSString *HTML;

@property (strong, nonatomic, readwrite) NSDictionary *options;

@property (strong, nonatomic) NSString *theme;

@property (strong, nonatomic) NSString *plugin;

@property (assign, nonatomic) BOOL debug;

@end

@implementation HIGChartView

- (instancetype)initWithFrame:(CGRect)frame options:(NSDictionary*)options
{
    return [self initWithFrame:frame options:options theme:@""];
}

- (instancetype)initWithFrame:(CGRect)frame options:(NSDictionary*)options theme:(NSString *)theme
{
    return [self initWithFrame:frame options:options theme:theme plugin:nil];
}

- (instancetype)initWithFrame:(CGRect)frame options:(NSDictionary*)options theme:(NSString*)theme plugin:(NSString*)plugin
{
    return [self initWithFrame:frame options:options theme:theme plugin:plugin debug:NO];
}

- (instancetype)initWithFrame:(CGRect)frame options:(NSDictionary*)options theme:(NSString*)theme plugin:(NSString*)plugin debug:(BOOL)debug
{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.plugin = plugin;
        
        self.debug = debug;
        
        self.theme = theme;
        
        self.options = options;
        
        NSBundle *frameworkBundle = [NSBundle bundleForClass:[self class]];
        
        NSString *tmpBundle = [frameworkBundle pathForResource:kHighchartsChartBundle ofType:nil];
        
        NSString *tmpLiblary = NSTemporaryDirectory();
        tmpLiblary = [tmpLiblary stringByAppendingPathComponent:kHighchartsChartBundle];
        
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
        self.webView.scrollView.scrollEnabled = NO;
        
        self.webView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        
        [self addSubview:self.webView];
    }
    return self;
}

- (void)didMoveToSuperview
{
    [super didMoveToSuperview];
    
    NSMutableDictionary *tmpOptions = [self.options mutableCopy];
    
    NSMutableDictionary *chart = [tmpOptions[@"chart"] mutableCopy] ? : [NSMutableDictionary dictionary];
    [chart setValue:@"container" forKey:@"renderTo"];
    
    NSError *error;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:tmpOptions
                                                       options:0
                                                         error:&error];
    
    if (!jsonData) {
        NSAssert(jsonData, @"Highcharts script was not found!");
        return;
    }

    [self loadHighchartsDebug:self.debug];
    [self loadHighchartsPlugin:self.plugin];
    [self loadHighchartsTheme:self.theme];
    
    NSString *JSONString = [[NSString alloc] initWithBytes:[jsonData bytes] length:[jsonData length] encoding:NSUTF8StringEncoding];
    [self loadHighcharts:JSONString];
}

- (void)loadHighchartsDebug:(BOOL)debug
{
    self.HTML = [self.HTML stringByReplacingOccurrencesOfString:@"{debug}" withString:debug?@".src":@""];
}

- (void)loadHighchartsPlugin:(NSString*)plugin
{
    NSString *jsPlugin = [NSString stringWithFormat:@"<script src=\"js/modules/%@.js\"></script>", plugin];
    
    self.HTML = [self.HTML stringByReplacingOccurrencesOfString:@"{script-plugin}" withString:plugin?jsPlugin:@""];
    self.HTML = [self.HTML stringByReplacingOccurrencesOfString:@"{theme}" withString:plugin?@"Highcharts.setOptions(Highcharts.theme);":@""];
}

- (void)loadHighchartsTheme:(NSString*)theme
{
    NSString *jsTheme = [NSString stringWithFormat:@"<script src=\"js/themes/%@.js\"></script>", theme];
    
    self.HTML = [self.HTML stringByReplacingOccurrencesOfString:@"{script-theme}" withString:theme?jsTheme:@""];
    self.HTML = [self.HTML stringByReplacingOccurrencesOfString:@"{theme}" withString:theme?@"Highcharts.setOptions(Highcharts.theme);":@""];
}

- (void)loadHighcharts:(NSString *)highcharts
{
    NSAssert(highcharts, @"Highcharts script was not found!");
    
    NSString *HTMLString = [self.HTML stringByReplacingOccurrencesOfString:@"{highcharts}" withString:highcharts];
    
    [self.webView loadHTMLString:HTMLString baseURL:[self.highchartsBundle bundleURL]];
}

@end
