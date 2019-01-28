//
//  HIWKSyncedWebView.m
//  HIWKSyncedWebView
//
//  License: www.highcharts.com/license
//  Copyright © 2019 Highsoft AS. All rights reserved.
//

#import "HIWKSyncedWebView.h"

@implementation HIWKSyncedWebView

- (instancetype)init {
    self = [super init];
    if (self) {
        self.navigationDelegate = self;
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    if (self) {
        self.navigationDelegate = self;
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.navigationDelegate = self;
    }
    return self;
}

- (void)setNavigationDelegate:(id<WKNavigationDelegate>)navigationDelegate {
    [super setNavigationDelegate:self];
    if (navigationDelegate != self) anotherDelegate = navigationDelegate;
}

- (WKNavigation *)loadHTMLString:(NSString *)string baseURL:(NSURL *)baseURL {
    WKNavigation *wknavigation = [super loadHTMLString:string baseURL:baseURL];
    CFRunLoopRunInMode((CFStringRef)NSDefaultRunLoopMode, 1, NO);
    return wknavigation;
}

-(void)stopRunLoop {
    CFRunLoopRef runLoop = [[NSRunLoop currentRunLoop] getCFRunLoop];
    CFRunLoopStop(runLoop);
}

#pragma mark - WKNavigationDelegate

- (void)webView:(WKWebView *)webView decidePolicyForNavigationAction:(WKNavigationAction *)navigationAction decisionHandler:(void (^)(WKNavigationActionPolicy))decisionHandler {
    if([anotherDelegate respondsToSelector:@selector(webView:decidePolicyForNavigationAction:decisionHandler:)])
        [anotherDelegate webView:webView decidePolicyForNavigationAction:navigationAction decisionHandler:decisionHandler];
}

- (void)webView:(WKWebView *)webView decidePolicyForNavigationResponse:(WKNavigationResponse *)navigationResponse decisionHandler:(void (^)(WKNavigationResponsePolicy))decisionHandler {
    if([anotherDelegate respondsToSelector:@selector(webView:decidePolicyForNavigationResponse:decisionHandler:)])
        [anotherDelegate webView:webView decidePolicyForNavigationResponse:navigationResponse decisionHandler:decisionHandler];
}

- (void)webView:(WKWebView *)webView didStartProvisionalNavigation:(null_unspecified WKNavigation *)navigation {
    if([anotherDelegate respondsToSelector:@selector(webView:didStartProvisionalNavigation:)])
        [anotherDelegate webView:webView didStartProvisionalNavigation:navigation];
}

- (void)webView:(WKWebView *)webView didReceiveServerRedirectForProvisionalNavigation:(null_unspecified WKNavigation *)navigation {
    if([anotherDelegate respondsToSelector:@selector(webView:didReceiveServerRedirectForProvisionalNavigation:)])
        [anotherDelegate webView:webView didReceiveServerRedirectForProvisionalNavigation:navigation];
}

- (void)webView:(WKWebView *)webView didFailProvisionalNavigation:(null_unspecified WKNavigation *)navigation withError:(NSError *)error {
    if([anotherDelegate respondsToSelector:@selector(webView:didFailProvisionalNavigation:withError:)])
        [anotherDelegate webView:webView didFailProvisionalNavigation:navigation withError:error];
}

- (void)webView:(WKWebView *)webView didCommitNavigation:(null_unspecified WKNavigation *)navigation {
    if([anotherDelegate respondsToSelector:@selector(webView:didCommitNavigation:)])
        [anotherDelegate webView:webView didCommitNavigation:navigation];
}

- (void)webView:(WKWebView *)webView didFinishNavigation:(null_unspecified WKNavigation *)navigation {
    [self performSelector:@selector(stopRunLoop) withObject:nil afterDelay:.01];
    if([anotherDelegate respondsToSelector:@selector(webView:didFinishNavigation:)])
        [anotherDelegate webView:webView didFinishNavigation:navigation];
}

- (void)webView:(WKWebView *)webView didFailNavigation:(null_unspecified WKNavigation *)navigation withError:(NSError *)error {
    [self performSelector:@selector(stopRunLoop) withObject:nil afterDelay:.01];
    if([anotherDelegate respondsToSelector:@selector(webView:didFailNavigation:withError:)])
        [anotherDelegate webView:webView didFailNavigation:navigation withError:error];
}

- (void)webView:(WKWebView *)webView didReceiveAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge completionHandler:(void (^)(NSURLSessionAuthChallengeDisposition disposition, NSURLCredential * _Nullable credential))completionHandler {
    if([anotherDelegate respondsToSelector:@selector(webView:didReceiveAuthenticationChallenge:completionHandler:)])
        [anotherDelegate webView:webView didReceiveAuthenticationChallenge:challenge completionHandler:completionHandler];
}

- (void)webViewWebContentProcessDidTerminate:(WKWebView *)webView API_AVAILABLE(macosx(10.11), ios(9.0)) {
    if([anotherDelegate respondsToSelector:@selector(webViewWebContentProcessDidTerminate:)])
        [anotherDelegate webViewWebContentProcessDidTerminate:webView];
}

@end
