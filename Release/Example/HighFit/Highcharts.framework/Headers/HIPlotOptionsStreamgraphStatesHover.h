/**
* (c) 2009-2017 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HIPlotOptionsStreamgraphStatesHoverHalo.h"
#import "HIPlotOptionsStreamgraphStatesHoverMarker.h"
#import "HIPlotOptionsStreamgraphStatesHoverAnimation.h"


/**
* description: Options for the hovered series. These settings override the normal
state options when a series is moused over or touched.
*/
@interface HIPlotOptionsStreamgraphStatesHover: HIChartsJSONSerializable

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
* description: Options for the halo appearing around the hovered point in line-
type series as well as outside the hovered slice in pie charts.
By default the halo is filled by the current point or series
color with an opacity of 0.25. The halo can be disabled by setting
the halo option to false.
In styled mode, the halo is styled with the .highcharts-halo class, with colors inherited from .highcharts-color-{n}.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/halo/ : Halo options
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/halo/ : Halo options
*/
@property(nonatomic, readwrite) HIPlotOptionsStreamgraphStatesHoverHalo *halo;
/**
* description: Pixel with of the graph line. By default this property is
undefined, and the lineWidthPlus property dictates how much
to increase the linewidth from normal state.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-states-hover-linewidth/ : 5px line on hover
* default: undefined
*/
@property(nonatomic, readwrite) NSNumber *lineWidth;
/**
* description: The additional line width for the graph of a hovered series.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-states-hover-linewidthplus/ : 5 pixels wider
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-states-hover-linewidthplus/ : 5 pixels wider
* default: 1
*/
@property(nonatomic, readwrite) NSNumber *lineWidthPlus;
/**
* description: In Highcharts 1.0, the appearance of all markers belonging to
the hovered series. For settings on the hover state of the individual
point, see marker.states.hover.
*/
@property(nonatomic, readwrite) HIPlotOptionsStreamgraphStatesHoverMarker *marker;
/**
* description: Animation setting for hovering the graph in line-type series.
* default: { "duration": 50 }
*/
@property(nonatomic, readwrite) HIPlotOptionsStreamgraphStatesHoverAnimation *animation;

-(NSDictionary *)getParams;

@end
