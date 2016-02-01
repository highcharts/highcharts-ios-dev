//
//  HIGView.m
//  Highcharts
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import "HIGChartView.h"
#import <WebKit/WebKit.h>

NSString * const kHighchartsChartBundleId = @"com.highcharts.charts.bundle";

@interface HIGChartView ()
@property (nonatomic, strong) WKWebView *webView;
@property (nonatomic, strong) NSBundle *highchartsBundle;
@property (nonatomic, strong) NSString *HTML;

@property (strong, nonatomic, readwrite) NSDictionary *options;
@end

@implementation HIGChartView

- (instancetype)initWithFrame:(CGRect)frame options:(NSDictionary*)options
{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.options = options;
        
        NSBundle *frameworkBundle = [NSBundle bundleForClass:[self class]];
        
        NSLog(@"%@", frameworkBundle);
        
        NSString *tmpBundle = [frameworkBundle pathForResource:kHighchartsChartBundleId ofType:nil inDirectory:@"Resources"];
             NSLog(@"%@", tmpBundle);
        NSString *tmpLiblary = NSTemporaryDirectory();
        tmpLiblary = [tmpLiblary stringByAppendingPathComponent:kHighchartsChartBundleId];
        
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
    
    NSString *JSONString = [[NSString alloc] initWithBytes:[jsonData bytes] length:[jsonData length] encoding:NSUTF8StringEncoding];
    [self loadHighcharts:JSONString];
}

- (void)loadHighcharts:(NSString *)highcharts
{
    NSAssert(highcharts, @"Highcharts script was not found!");
    
    NSString *HTMLString = [self.HTML stringByReplacingOccurrencesOfString:@"{highcharts}" withString:highcharts];
    
    [self.webView loadHTMLString:HTMLString baseURL:[self.highchartsBundle bundleURL]];
}

@end
