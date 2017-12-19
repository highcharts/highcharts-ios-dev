/**
* (c) 2009-2017 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HIAnimation.h"
#import "HIHalo.h"
#import "HIColor.h"

@class HIMarker;
/**
* description: Options for the selected point. These settings override the normal
state options when a point is selected.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/maps/plotoptions/series-allowpointselect/ : Allow point select demo
*/
@interface HISelect: HIChartsJSONSerializable

/**
* description: The fill color of the point marker.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-marker-states-select-fillcolor/ : Solid red discs for selected points
* default: null
*/
@property(nonatomic, readwrite) HIColor *fillColor;
/**
* description: The radius of the point marker. In hover state, it defaults to the
normal state's radius + 2.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-marker-states-select-radius/ : 10px radius for selected points
*/
@property(nonatomic, readwrite) NSNumber *radius;
/**
* description: The width of the point marker's outline.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-marker-states-select-linewidth/ : 3px line width for selected points
* default: 0
*/
@property(nonatomic, readwrite) NSNumber *lineWidth;
/**
* description: The color of the point marker's outline. When null, the series'
or point's color is used.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-marker-states-select-linecolor/ : Red line color for selected points
* default: #000000
*/
@property(nonatomic, readwrite) HIColor *lineColor;
/**
* description: Enable or disable visible feedback for selection.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-marker-states-select-enabled/ : Disabled select state
* default: true
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *enabled;
/**
* description: Animation setting for hovering the graph in line-type series.
* default: { "duration": 50 }
*/
@property(nonatomic, readwrite) HIAnimation *animation;
/**
* description: A specific border color for the selected point.
* default: #000000
*/
@property(nonatomic, readwrite) HIColor *borderColor;
/**
* description: A specific color for the selected point.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/maps/plotoptions/series-states-hover/ : Hover options
* default: #cccccc
*/
@property(nonatomic, readwrite) HIColor *color;
/**
* description: The additional line width for the graph of a hovered series.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-states-hover-linewidthplus/ : 5 pixels wider
* default: 1
*/
@property(nonatomic, readwrite) NSNumber *lineWidthPlus;
/**
* description: Options for the halo appearing around the hovered point in line-
type series as well as outside the hovered slice in pie charts.
By default the halo is filled by the current point or series
color with an opacity of 0.25. The halo can be disabled by setting
the halo option to false.
In styled mode, the halo is styled with the .highcharts-halo class, with colors inherited from .highcharts-color-{n}.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/halo/ : Halo options
*/
@property(nonatomic, readwrite) HIHalo *halo;
/**
* description: In Highcharts 1.0, the appearance of all markers belonging to
the hovered series. For settings on the hover state of the individual
point, see marker.states.hover.
*/
@property(nonatomic, readwrite) HIMarker *marker;

-(NSDictionary *)getParams;

@end
