/**
* (c) 2009-2017 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HIChartsJSONSerializable.h"


/**
* description: CSS styles for the words.
* default: {"fontFamily":"Impact, sans-serif"}
*/
@interface HIPlotOptionsWordcloudStyle: HIChartsJSONSerializable

/**
* description: The font family to use for the word cloud.
* default: Impact, sans-serif
*/
@property(nonatomic, readwrite) NSString *fontFamily;

-(NSDictionary *)getParams;

@end
