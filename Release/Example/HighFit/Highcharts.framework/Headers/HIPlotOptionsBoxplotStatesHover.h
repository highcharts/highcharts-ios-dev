/**
* (c) 2009-2017 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HIPlotOptionsBoxplotStatesHoverAnimation.h"
#import "HIColor.h"


/**
* description: Options for the hovered series. These settings override the normal
state options when a series is moused over or touched.
*/
@interface HIPlotOptionsBoxplotStatesHover: HIChartsJSONSerializable

/**
* description: Enable separate styles for the hovered series to visualize that the
user hovers either the series itself or the legend. .

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-states-hover-enabled/ : Line
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-states-hover-enabled-column/ : Column
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-states-hover-enabled-pie/ : Pie
* default: true
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *enabled;
/**
* description: A specific border color for the hovered point. Defaults to
inherit the normal state border color.
*/
@property(nonatomic, readwrite) HIColor *borderColor;
@property(nonatomic, readwrite) NSNumber /* Bool */ *shadow;
/**
* description: A specific color for the hovered point.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/maps/plotoptions/series-states-hover/ : Hover options
* default: undefined
*/
@property(nonatomic, readwrite) HIColor *color;
/**
* description: Animation setting for hovering the graph in line-type series.
* default: { "duration": 50 }
*/
@property(nonatomic, readwrite) HIPlotOptionsBoxplotStatesHoverAnimation *animation;
/**
* description: How much to brighten the point on interaction. Requires the main
color to be defined in hex or rgb(a) format.
In styled mode, the hover brightening is by default replaced
with a fill-opacity set in the .highcharts-point:hover rule.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/column-states-hover-brightness/ : Brighten by 0.5
*/
@property(nonatomic, readwrite) NSNumber *brightness;

-(NSDictionary *)getParams;

@end
