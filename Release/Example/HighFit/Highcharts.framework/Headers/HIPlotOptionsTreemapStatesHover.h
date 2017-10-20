/**
* (c) 2009-2017 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HIPlotOptionsTreemapStatesHoverAnimation.h"
#import "HIPlotOptionsTreemapStatesHoverMarker.h"


/**
* description: Options for the hovered series
*/
@interface HIPlotOptionsTreemapStatesHover: HIChartsJSONSerializable

/**
* description: Animation setting for hovering the graph in line-type series.
* default: { "duration": 50 }
*/
@property(nonatomic, readwrite) HIPlotOptionsTreemapStatesHoverAnimation *animation;
/**
* description: In Highcharts 1.0, the appearance of all markers belonging to
the hovered series. For settings on the hover state of the individual
point, see marker.states.hover.
*/
@property(nonatomic, readwrite) HIPlotOptionsTreemapStatesHoverMarker *marker;
/**
* description: The shadow option for hovered state.
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *shadow;
/**
* description: The additional line width for the graph of a hovered series.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-states-hover-linewidthplus/ : 5 pixels wider
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-states-hover-linewidthplus/ : 5 pixels wider
* default: 1
*/
@property(nonatomic, readwrite) NSNumber *lineWidthPlus;
/**
* description: The opacity of a point in treemap. When a point has children,
the visibility of the children is determined by the opacity.
* default: 0.75
*/
@property(nonatomic, readwrite) NSNumber *opacity;
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
* description: Pixel with of the graph line. By default this property is
undefined, and the lineWidthPlus property dictates how much
to increase the linewidth from normal state.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-states-hover-linewidth/ : 5px line on hover
* default: undefined
*/
@property(nonatomic, readwrite) NSNumber *lineWidth;

-(NSDictionary *)getParams;

@end
