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
* description: Configure a crosshair that follows either the mouse pointer or the
hovered point.
In styled mode, the crosshairs are styled in the .highcharts-crosshair, .highcharts-crosshair-thin or .highcharts-xaxis-category
classes.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/xaxis/crosshair-both/ : Crosshair on both axes
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/stock/xaxis/crosshairs-xy/ : Crosshair on both axes
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/xaxis/crosshair-both/ : Crosshair on both axes
* default: false
*/
@interface HIChartParallelAxesCrosshair: HIChartsJSONSerializable

/**
* description: The pixel width of the crosshair. Defaults to 1 for numeric or datetime
axes, and for one category width for category axes.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/xaxis/crosshair-customized/ : Customized crosshairs
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/xaxis/crosshair-customized/ : Customized crosshairs
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/xaxis/crosshair-customized/ : Customized crosshairs
* default: 1
*/
@property(nonatomic, readwrite) NSNumber *width;
/**
* description: A class name for the crosshair, especially as a hook for styling.
*/
@property(nonatomic, readwrite) NSString *className;
/**
* description: The Z index of the crosshair. Higher Z indices allow drawing the
crosshair on top of the series or behind the grid lines.
* default: 2
*/
@property(nonatomic, readwrite) NSNumber *zIndex;
/**
* description: Whether the crosshair should snap to the point or follow the pointer
independent of points.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/xaxis/crosshair-snap-false/ : True by default
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/xaxis/crosshair-snap-false/ : True by default
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/maps/demo/latlon-advanced/ : Snap is false
* default: true
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *snap;
/**
* description: The dash style for the crosshair. See series.dashStyle for possible values.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/xaxis/crosshair-dotted/ : Dotted crosshair
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/stock/xaxis/crosshair-dashed/ : Dashed X axis crosshair
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/xaxis/crosshair-dotted/ : Dotted crosshair
* accepted values: ["Solid", "ShortDash", "ShortDot", "ShortDashDot", "ShortDashDotDot", "Dot", "Dash" ,"LongDash", "DashDot", "LongDashDot", "LongDashDotDot"]
* default: Solid
*/
@property(nonatomic, readwrite) NSString *dashStyle;
/**
* description: The color of the crosshair. Defaults to #cccccc for numeric and
datetime axes, and rgba(204,214,235,0.25) for category axes, where
the crosshair by default highlights the whole category.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/xaxis/crosshair-customized/ : Customized crosshairs
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/xaxis/crosshair-customized/ : Customized crosshairs
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/xaxis/crosshair-customized/ : Customized crosshairs
* default: #cccccc
*/
@property(nonatomic, readwrite) HIColor *color;

-(NSDictionary *)getParams;

@end