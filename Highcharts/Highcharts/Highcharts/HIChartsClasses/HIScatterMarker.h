#import "HIScatterMarkerStates.h"
#import "HIHexColor.h"


/**
* description: Options for the point markers of line-like series. Properties like fillColor, lineColor and lineWidth define the visual appearance of the markers. Other series types, like column series, don't have markers, but have visual options on the series level instead.
In http://www.highcharts.com/docs/chart-design-and-style/style-by-css : styled mode, the markers can be styled with the .highcharts-point, .highcharts-point-hover and .highcharts-point-select class names.
*/
@interface HIScatterMarker: HIChartsJSONSerializable

@property(nonatomic, readwrite) HIScatterMarkerStates *states;
/**
* description: The fill color of the point marker. When null, the series' or point's color is used.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-marker-fillcolor/ : White fill
*/
@property(nonatomic, readwrite) HIHexColor *fillColor;
/**
* description: The color of the point marker's outline. When null, the series' or point's color is used.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-marker-fillcolor/ : Inherit from series color (null)
*/
@property(nonatomic, readwrite) HIHexColor *lineColor;
/**
* description: The radius of the point marker.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-marker-radius/ : Bigger markers
*/
@property(nonatomic, readwrite) NSNumber *radius;
/**
* description: Enable or disable the point marker. If null, the markers are hidden when the data is dense, and shown for more widespread data points.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-marker-enabled/ : Disabled markers,
			http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-marker-enabled-false/ : disabled in normal state but enabled on hover
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *enabled;
/**
* description: Image markers only. Set the image width explicitly. When using this option, a width must also be set.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-marker-width-height/ : Fixed width and height
*/
@property(nonatomic, readwrite) NSNumber *height;
/**
* description: A predefined shape or symbol for the marker. When null, the symbol is pulled from options.symbols. Other possible values are "circle", "square", "diamond", "triangle" and "triangle-down".
Additionally, the URL to a graphic can be given on this form:  "url(graphic.png)". Note that for the image to be applied to exported charts, its URL needs to be accessible by the export server.
Custom callbacks for symbol path generation can also be added to Highcharts.SVGRenderer.prototype.symbols. The callback is then used by its method name, as shown in the demo.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-marker-symbol/ : Predefined, graphic and custom markers
* accepted values: [null, "circle", "square", "diamond", "triangle", "triangle-down"]
*/
@property(nonatomic, readwrite) NSString *symbol;
/**
* description: Image markers only. Set the image width explicitly. When using this option, a height must also be set.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-marker-width-height/ : Fixed width and height
*/
@property(nonatomic, readwrite) NSNumber *width;
/**
* description: The width of the point marker's outline.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-marker-fillcolor/ : 2px blue marker
*/
@property(nonatomic, readwrite) NSNumber *lineWidth;

-(NSDictionary *)getParams;

@end