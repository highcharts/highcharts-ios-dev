/**
* (c) 2009-2017 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HIPlotOptionsBubbleMarkerStates.h"
#import "HIColor.h"


/**
* description: Options for the point markers of line-like series. Properties like
fillColor, lineColor and lineWidth define the visual appearance
of the markers. Other series types, like column series, don't have
markers, but have visual options on the series level instead.
In styled mode, the markers can be styled with the .highcharts-point, .highcharts-point-hover and .highcharts-point-select
class names.
*/
@interface HIPlotOptionsBubbleMarker: HIChartsJSONSerializable

/**
* description: The fill color of the point marker. When null, the series' or
point's color is used.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-marker-fillcolor/ : White fill
* default: null
*/
@property(nonatomic, readwrite) HIColor *fillColor;
/**
* description: States for a single point marker.
*/
@property(nonatomic, readwrite) HIPlotOptionsBubbleMarkerStates *states;
/**
* description: The width of the point marker's outline.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-marker-fillcolor/ : 2px blue marker
* default: 1
*/
@property(nonatomic, readwrite) NSNumber *lineWidth;
/**
* description: A predefined shape or symbol for the marker. Possible values are
"circle", "square", "diamond", "triangle" and "triangle-down".
Additionally, the URL to a graphic can be given on the form
url(graphic.png). Note that for the image to be applied to exported
charts, its URL needs to be accessible by the export server.
Custom callbacks for symbol path generation can also be added to
Highcharts.SVGRenderer.prototype.symbols. The callback is then
used by its method name, as shown in the demo.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/bubble-symbol/ : Bubble chart with various symbols
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-marker-symbol/ : General chart with predefined, graphic and custom markers
* accepted values: ["circle", "square", "diamond", "triangle", "triangle-down"]
* default: circle
*/
@property(nonatomic, readwrite) NSString *symbol;
/**
* description: The color of the point marker's outline. When null, the series'
or point's color is used.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-marker-fillcolor/ : Inherit from series color (null)
*/
@property(nonatomic, readwrite) HIColor *lineColor;

-(NSDictionary *)getParams;

@end
