/**
* (c) 2009-2017 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HIChartsJSONSerializable.h"
#import "HIColor.h"


/**
* description: An array defining zones within a series. Zones can be applied to
the X axis, Y axis or Z axis for bubbles, according to the zoneAxis
option.
In styled mode, the color zones are styled with the .highcharts-
zone-{n} class, or custom classed from the className option (http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/css/color-
zones/ : view
live demo).

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/series/color-zones-simple/ : Color zones
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/series/color-zones-simple/ : Color zones
*/
@interface HIVariwideZones: HIChartsJSONSerializable

/**
* description: The value up to where the zone extends, if undefined the zones stretches
to the last value in the series.
* default: undefined
*/
@property(nonatomic, readwrite) NSNumber *value;
/**
* description: Styled mode only. A custom class name for the zone.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/css/color-zones/ : Zones styled by class name
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/css/color-zones/ : Zones styled by class name
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/css/color-zones/ : Zones styled by class name
*/
@property(nonatomic, readwrite) NSString *className;
/**
* description: A name for the dash style to use for the graph.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/series/color-zones-dashstyle-dot/ : Dashed line indicates prognosis
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/series/color-zones-dashstyle-dot/ : Dashed line indicates prognosis
*/
@property(nonatomic, readwrite) NSString *dashStyle;
/**
* description: Defines the color of the series.
*/
@property(nonatomic, readwrite) HIColor *color;
/**
* description: Defines the fill color for the series (in area type series)
*/
@property(nonatomic, readwrite) HIColor *fillColor;

-(NSDictionary *)getParams;

@end