/**
* (c) 2009-2017 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HIChartsJSONSerializable.h"


/**
* description: Set the animation for all drilldown animations. Animation of a drilldown
occurs when drilling between a column point and a column series,
or a pie slice and a full pie series. Drilldown can still be used
between series and points of different types, but animation will
not occur.
The animation can either be set as a boolean or a configuration
object. If true, it will use the 'swing' jQuery easing and a duration
of 500 ms. If used as a configuration object, the following properties
are supported:

duration
The duration of the animation in milliseconds.
easing
A string reference to an easing function set on the Math object.
See http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-
animation-easing/ : the easing demo.

*/
@interface HIDrilldownAnimation: HIChartsJSONSerializable

/**
* description: Duration for the drilldown animation.
* default: 500
*/
@property(nonatomic, readwrite) id /* NSString, NSNumber */ duration;

-(NSDictionary *)getParams;

@end
