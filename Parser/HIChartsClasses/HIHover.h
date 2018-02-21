/**
* (c) 2009-2018 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HIAnimation.h"
#import "HIHalo.h"
#import "HIColor.h"


/**
* description: Options for the hovered series. These settings override the normal
state options when a series is moused over or touched.
*/
@interface HIHover: HIChartsJSONSerializable

@property(nonatomic, readwrite) NSNumber *radiusPlus;
/**
* description: Enable separate styles for the hovered series to visualize that
the user hovers either the series itself or the legend. .
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-states-hover-enabled/ : Line
https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-states-hover-enabled-column/ : Column
https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-states-hover-enabled-pie/ : Pie
* default: true
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *enabled;
/**
* description: Animation setting for hovering the graph in line-type series.
* default: { "duration": 50 }
*/
@property(nonatomic, readwrite) HIAnimation *animation;
/**
* description: Pixel width of the graph line. By default this property is
undefined, and the lineWidthPlus property dictates how much
to increase the linewidth from normal state.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-states-hover-linewidth/ : 5px line on hover
* default: undefined
*/
@property(nonatomic, readwrite) NSNumber *lineWidth;
/**
* description: The additional line width for the graph of a hovered series.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-states-hover-linewidthplus/ : 5 pixels wider
* default: 1
*/
@property(nonatomic, readwrite) NSNumber *lineWidthPlus;
/**
* description: Options for the halo appearing around the hovered point in line-
type series as well as outside the hovered slice in pie charts.
By default the halo is filled by the current point or series
color with an opacity of 0.25\. The halo can be disabled by
setting the halo option to false.

In styled mode, the halo is styled with the .highcharts-halo
class, with colors inherited from .highcharts-color-{n}.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/halo/ : Halo options
*/
@property(nonatomic, readwrite) HIHalo *halo;
/**
* description: The fill color of the marker in hover state. When null, the
series' or point's fillColor for normal state is used.
* default: null
*/
@property(nonatomic, readwrite) HIColor *fillColor;
/**
* description: The color of the point marker's outline. When null, the
series' or point's lineColor for normal state is used.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-marker-states-hover-linecolor/ : White fill color, black line color
* default: null
*/
@property(nonatomic, readwrite) HIColor *lineColor;
/**
* description: The radius of the point marker. In hover state, it defaults
to the normal state's radius + 2 as per the
radiusPlus
option.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-marker-states-hover-radius/ : 10px radius
*/
@property(nonatomic, readwrite) NSNumber *radius;
/**
* description: How much to brighten the point on interaction. Requires the main
color to be defined in hex or rgb(a) format.

In styled mode, the hover brightening is by default replaced
with a fill-opacity set in the .highcharts-point:hover rule.
*/
@property(nonatomic, readwrite) NSNumber *brightness;
/**
* description: Opacity for the links between nodes in the sankey diagram in
hover mode.
*/
@property(nonatomic, readwrite) NSNumber *linkOpacity;
/**
* description: The border color for the hovered state.
*/
@property(nonatomic, readwrite) NSString *borderColor;
/**
* description: The opacity of a point in treemap. When a point has children,
the visibility of the children is determined by the opacity.
* default: 0.75
*/
@property(nonatomic, readwrite) NSNumber *opacity;
/**
* description: The shadow option for hovered state.
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *shadow;
/**
* description: A specific color for the hovered point.
* default: undefined
*/
@property(nonatomic, readwrite) HIColor *color;

-(NSDictionary *)getParams;

@end
