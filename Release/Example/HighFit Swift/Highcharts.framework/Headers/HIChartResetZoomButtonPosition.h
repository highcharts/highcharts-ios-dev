/**
* (c) 2009-2017 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HIChartsJSONSerializable.h"


/**
* description: The position of the button.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/chart/resetzoombutton-position/ : Above the plot area
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/chart/resetzoombutton-position/ : Above the plot area
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/chart/resetzoombutton-position/ : Above the plot area
*/
@interface HIChartResetZoomButtonPosition: HIChartsJSONSerializable

/**
* description: The horizontal offset of the button.
* default: -10
*/
@property(nonatomic, readwrite) NSNumber *x;
/**
* description: The vertical alignment of the button.

* accepted values: ["top", "middle", "bottom"]
* default: top
*/
@property(nonatomic, readwrite) NSString *verticalAlign;
/**
* description: The horizontal alignment of the button.
* default: right
*/
@property(nonatomic, readwrite) NSString *align;
/**
* description: The vertical offset of the button.
* default: 10
*/
@property(nonatomic, readwrite) NSNumber *y;

-(NSDictionary *)getParams;

@end
