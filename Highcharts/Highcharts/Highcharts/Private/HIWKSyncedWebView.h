//
//  HIWKSyncedWebView.h
//  HIWKSyncedWebView
//
//  License: www.highcharts.com/license
//  Copyright © 2019 Highsoft AS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <WebKit/WebKit.h>

@interface HIWKSyncedWebView : WKWebView<WKNavigationDelegate> {
	id anotherDelegate;
}

@end
