//
//  HIGHTML.h
//  Highcharts
//
//  License: www.highcharts.com/license
//  Copyright © 2016 Highsoft AS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HIGHTML : NSObject

@property (strong, readonly) NSString *html;

- (void)loadHTML:(NSString*)path;

- (void)prepareJavaScript:(NSArray*)files prefix:(NSString*)prefix suffix:(NSString*)suffix;

- (void)prepareOptions:(NSDictionary*)options;

- (void)injectJavaScriptToHTML;

@end
