//
//  HIGHTML.h
//  Highcharts
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  This is main class that operates on HTML, loading, parsing ect...
 */
@interface HIGHTML : NSObject

/**
 *  This is parsed HTML.
 */
@property (strong, readonly) NSString *html;

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
- (void)prepareJavaScript:(NSArray*)files prefix:(NSString*)prefix suffix:(NSString*)suffix;

/**
 *  Prepare options objective-c object to JS representation.
 *
 *  @param options NSDictionary object.
 */
- (void)prepareOptions:(NSDictionary*)options;

/**
 *  Last step preparing HTML. After this get HTML from 'html' property.
 */
- (void)injectJavaScriptToHTML;

@end
