/**
* (c) 2009-2017 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HIChartsJSONSerializable.h"


/**
* description: A declarative filter for which data labels to display. The
declarative filter is designed for use when callback functions are
not available, like when the chart options require a pure JSON
structure or for use with graphical editors. For programmatic
control, use the formatter instead, and return false to disable
a single data label.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/demo/pie-monochrome : Data labels filtered by percentage
*/
@interface HIFilter: HIChartsJSONSerializable

/**
* description: The value to compare against.
*/
@property(nonatomic, readwrite) id value;
/**
* description: The point property to filter by. Point options are passed directly to
properties, additionally there are y value, percentage and others
listed under https://api.highcharts.com/class-reference/Highcharts.Point : Point
members.
*/
@property(nonatomic, readwrite) NSString *property;
/**
* description: The operator to compare by. Can be one of >, <, >=, <=, ==,
and ===.

* accepted values: [">", "<", ">=", "<=", "==", "===""]
*/
@property(nonatomic, readwrite) NSString *operator;

-(NSDictionary *)getParams;

@end
