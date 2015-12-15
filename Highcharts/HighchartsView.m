//
//  Highcharts.m
//  Highcharts-iOS
//
//  Created by Highsoft AS 06.12.2015.
//  Copyright © 2015 Highsoft AS. All rights reserved.
//

#import "HighchartsView.h"
#import <WebKit/WebKit.h>

@interface HighchartsView ()
@property (nonatomic, strong) WKWebView *webView;
@property (nonatomic, strong) NSBundle *highchartsBundle;
@property (nonatomic, strong) NSString *HTML;
@end

@implementation HighchartsView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        [self loadHighchartJS];
        [self loadHighchartHTML];
        
        self.webView = [[WKWebView alloc] initWithFrame:frame];
        self.webView.scrollView.scrollEnabled = NO;
        self.webView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        [self addSubview:self.webView];
    }
    return self;
}

- (void)loadHighchartJS
{
    NSString *highchartsPath = [[NSBundle mainBundle] pathForResource:@"Highcharts" ofType:@"bundle"];
    
    self.highchartsBundle = [NSBundle bundleWithPath:highchartsPath];
    
    NSAssert(self.highchartsBundle, @"Highcharts bundle was not found!");
}

- (void)loadHighchartHTML
{
    NSString *HTMLPath = [self.highchartsBundle pathForResource:@"highcharts" ofType:@"html"];
    
    self.HTML = [NSString stringWithContentsOfFile:HTMLPath encoding:NSUTF8StringEncoding error:nil];
    
    NSAssert(self.HTML, @"Highcharts HTML was not found!");
}

- (void)loadHighcharts:(NSString *)highcharts
{
    NSAssert(highcharts, @"Highcharts script was not found!");
    
    NSString *HTMLString = [self.HTML stringByReplacingOccurrencesOfString:@"{highcharts}" withString:highcharts];
    
    [self.webView loadHTMLString:HTMLString baseURL:[self.highchartsBundle bundleURL]];
}

@end
