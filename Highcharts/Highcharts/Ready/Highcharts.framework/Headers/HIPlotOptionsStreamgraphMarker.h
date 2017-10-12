/**
* (c) 2009-2017 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HIPlotOptionsStreamgraphMarkerStates.h"
#import "HIColor.h"


/**
* description: Options for the point markers of line-like series. Properties like
fillColor, lineColor and lineWidth define the visual appearance
of the markers. Other series types, like column series, don't have
markers, but have visual options on the series level instead.
In styled mode, the markers can be styled with the .highcharts-point,
.highcharts-point-hover and .highcharts-point-select
class names.
*/
@interface HIPlotOptionsStreamgraphMarker: HIChartsJSONSerializable

/**
* description: The fill color of the point marker. When null, the series' or
point's color is used.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-marker-fillcolor/ : White fill
* default: null
*/
@property(nonatomic, readwrite) HIColor *fillColor;
/**
* description: The radius of the point marker.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-marker-radius/ : Bigger markers
* default: 4
*/
@property(nonatomic, readwrite) NSNumber *radius;
/**
* description: Image markers only. Set the image width explicitly. When using this
option, a width must also be set.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-marker-width-height/ : Fixed width and height
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-marker-width-height/ : Fixed width and height
* default: null
*/
@property(nonatomic, readwrite) NSNumber *height;
/**
* description: The width of the point marker's outline.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-marker-fillcolor/ : 2px blue marker
* default: 0
*/
@property(nonatomic, readwrite) NSNumber *lineWidth;
/**
* description: The color of the point marker's outline. When null, the series'
or point's color is used.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-marker-fillcolor/ : Inherit from series color (null)
* default: #ffffff
*/
@property(nonatomic, readwrite) HIColor *lineColor;
/**
* description: Image markers only. Set the image width explicitly. When using this
option, a height must also be set.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-marker-width-height/ : Fixed width and height
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-marker-width-height/ : Fixed width and height
* default: null
*/
@property(nonatomic, readwrite) NSNumber *width;
/**
* description: States for a single point marker.
*/
@property(nonatomic, readwrite) HIPlotOptionsStreamgraphMarkerStates *states;
/**
* description: A predefined shape or symbol for the marker. When null, the symbol
is pulled from options.symbols. Other possible values are "circle",
"square", "diamond", "triangle" and "triangle-down".
Additionally, the URL to a graphic can be given on this form:
"url(graphic.png)". Note that for the image to be applied to exported
charts, its URL needs to be accessible by the export server.
Custom callbacks for symbol path generation can also be added to
Highcharts.SVGRenderer.prototype.symbols. The callback is then
used by its method name, as shown in the demo.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-marker-symbol/ : Predefined, graphic and custom markers
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-marker-symbol/ : Predefined, graphic and custom markers
* accepted values: [null, "circle", "square", "diamond", "triangle",
        "triangle-down"]
* default: null
*/
@property(nonatomic, readwrite) NSString *symbol;
/**
* description: Enable or disable the point marker. If null, the markers are hidden
when the data is dense, and shown for more widespread data points.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-marker-enabled/ : Disabled markers
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-marker-enabled-false/ : Disabled in normal state but enabled on hover
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/stock/plotoptions/series-marker/ : Enabled markers
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *enabled;

-(NSDictionary *)getParams;

@end
