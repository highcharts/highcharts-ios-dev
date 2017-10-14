/**
* (c) 2009-2017 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HIChartsJSONSerializable.h"


/**
* description: CSS styles for the loading screen that covers the plot area.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/loading/style/ : Gray plot area, white text
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/stock/loading/general/ : Gray plot area, white text
* default: { "position": "absolute", "backgroundColor": "#ffffff", "opacity": 0.5, "textAlign": "center" }
*/
@interface HILoadingStyle: HIChartsJSONSerializable

@property(nonatomic, readwrite) NSString *backgroundColor;
@property(nonatomic, readwrite) NSString *textAlign;
@property(nonatomic, readwrite) NSNumber *opacity;
@property(nonatomic, readwrite) NSString *position;

-(NSDictionary *)getParams;

@end
