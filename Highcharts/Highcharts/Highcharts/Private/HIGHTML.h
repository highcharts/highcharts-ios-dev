//
//  HIGHTML.h
//  Highcharts
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import "UIKit/UIKit.h"
#import <Foundation/Foundation.h>

/**
 *  System Versioning Preprocessor Macro
 */
#define SYSTEM_VERSION_LESS_THAN(v) ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedAscending)

/**
 *  This is main class that operates on HTML, loading, parsing ect...
 */
@interface HIGHTML : NSObject

/**
 *  This is base ULRL path for bundle.
 */
@property (strong, nonatomic) NSString *baseURL;

/**
 *  This is parsed HTML.
 */
@property (strong, readonly) NSString *html;

/**
 *  This is options object injected to WebView.
 */
@property (strong, nonatomic) NSString *options;

/**
 *  This is lang object injected to WebView.
 */
@property (strong, nonatomic) NSString *lang;

/**
 *  Prepare scripts before injecting to HTML.
 */
- (void)prepareScripts;

/**
 *  Loads html from location.
 *
 *  @param path to HTML file to load.
 */
- (void)loadHTML:(NSString*)path;

/**
 *  Prepare JS files to load name, prefix, suffix.
 *
 *  @param files  JS files names to load from bundle. egz. 'highchart'
 *  @param prefix JS files prefix default 'js/'
 *  @param suffix JS files suffix default '.js'
 */
- (void)prepareJavaScript:(NSString*)js prefix:(NSString*)prefix suffix:(NSString*)suffix;

/**
 *  Prepare options objective-c object to JS representation.
 *
 *  @param options NSDictionary object.
 */
- (void)prepareOptions:(NSDictionary*)options;

/**
 *  Prepare lang objective-c object to JS representation.
 *
 *  @params lang is NSDictionary objects.
 */
- (void)prepareLang:(NSDictionary*)lang;

/**
 *  Prepare width and height in htm for proper display.
 *
 *  @param width for wiew.
 *  @param height for wiew.
 */
- (void)prepareViewWidth:(float)width height:(float)height;

/**
 *  Last step preparing HTML. After this get HTML from 'html' property.
 */
- (void)injectJavaScriptToHTML;

@end
