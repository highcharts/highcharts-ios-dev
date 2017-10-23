/**
* (c) 2009-2017 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HIAreasplineMarkerStatesHoverAnimation.h"
#import "HIColor.h"


/**
* description: The hover state for a single point marker.
*/
@interface HIAreasplineMarkerStatesHover: HIChartsJSONSerializable

/**
* description: The number of pixels to increase the radius of the hovered point.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-states-hover-linewidthplus/ : 5 pixels greater radius on hover
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-states-hover-linewidthplus/ : 5 pixels greater radius on hover
* default: 2
*/
@property(nonatomic, readwrite) NSNumber *radiusPlus;
/**
* description: Animation when hovering over the marker.
*/
@property(nonatomic, readwrite) HIAreasplineMarkerStatesHoverAnimation *animation;
/**
* description: The additional line width for a hovered point.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-states-hover-linewidthplus/ : 2 pixels wider on hover
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-states-hover-linewidthplus/ : 2 pixels wider on hover
* default: 1
*/
@property(nonatomic, readwrite) NSNumber *lineWidthPlus;
/**
* description: The color of the point marker's outline. When null, the
series' or point's color is used.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-marker-states-hover-linecolor/ : White fill color, black line color
* default: #ffffff
*/
@property(nonatomic, readwrite) HIColor *lineColor;
/**
* description: The fill color of the marker in hover state.
* default: null
*/
@property(nonatomic, readwrite) HIColor *fillColor;
/**
* description: Enable or disable the point marker.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-marker-states-hover-enabled/ : Disabled hover state
* default: true
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *enabled;
/**
* description: The radius of the point marker. In hover state, it defaults to the
normal state's radius + 2 as per the radiusPlus option.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-marker-states-hover-radius/ : 10px radius
*/
@property(nonatomic, readwrite) NSNumber *radius;
/**
* description: The width of the point marker's outline.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-marker-states-hover-linewidth/ : 3px line width
* default: 0
*/
@property(nonatomic, readwrite) NSNumber *lineWidth;

-(NSDictionary *)getParams;

@end
