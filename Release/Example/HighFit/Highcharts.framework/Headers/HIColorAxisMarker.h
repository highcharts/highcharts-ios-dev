/**
* (c) 2009-2017 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HIColorAxisMarkerAnimation.h"
#import "HIColor.h"


/**
* description: The triangular marker on a scalar color axis that points to the
value of the hovered area. To disable the marker, set marker:
null.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/maps/coloraxis/marker/ : Black marker
*/
@interface HIColorAxisMarker: HIChartsJSONSerializable

/**
* description: The color of the marker.
* default: #999999
*/
@property(nonatomic, readwrite) HIColor *color;
/**
* description: Animation for the marker as it moves between values. Set to false
to disable animation. Defaults to { duration: 50 }.
*/
@property(nonatomic, readwrite) HIColorAxisMarkerAnimation *animation;

-(NSDictionary *)getParams;

@end
