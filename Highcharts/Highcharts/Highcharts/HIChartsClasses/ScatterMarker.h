#import "ScatterMarkerStates.h"
#import "HexColor.h"


/**
* description: <p>Options for the point markers of line-like series. Properties like <code>fillColor</code>, <code>lineColor</code> and <code>lineWidth</code> define the visual appearance of the markers. Other series types, like column series, don't have markers, but have visual options on the series level instead.</p>

<p>In <a href="http://www.highcharts.com/docs/chart-design-and-style/style-by-css">styled mode</a>, the markers can be styled with the <code>.highcharts-point</code>, <code>.highcharts-point-hover</code> and <code>.highcharts-point-select</code> class names.</p>
*/
@interface ScatterMarker: HIChartsJSONSerializable

@property(nonatomic, readwrite) ScatterMarkerStates *states;
/**
* description: The fill color of the point marker. When <code>null</code>, the series' or point's color is used.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-marker-fillcolor/" target="_blank">White fill</a>
*/
@property(nonatomic, readwrite) HexColor *fillColor;
/**
* description: The color of the point marker's outline. When <code>null</code>, the series' or point's color is used.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-marker-fillcolor/" target="_blank">Inherit from series color (null)</a>
*/
@property(nonatomic, readwrite) HexColor *lineColor;
/**
* description: The radius of the point marker.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-marker-radius/" target="_blank">Bigger markers</a>
*/
@property(nonatomic, readwrite) NSNumber *radius;
/**
* description: Enable or disable the point marker. If <code>null</code>, the markers are hidden when the data is dense, and shown for more widespread data points.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-marker-enabled/" target="_blank">Disabled markers</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-marker-enabled-false/" target="_blank">disabled in normal state but enabled on hover</a>
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *enabled;
/**
* description: Image markers only. Set the image width explicitly. When using this option, a <code>width</code> must also be set.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-marker-width-height/" target="_blank">Fixed width and height</a>
*/
@property(nonatomic, readwrite) NSNumber *height;
/**
* description: <p>A predefined shape or symbol for the marker. When null, the symbol is pulled from options.symbols. Other possible values are "circle", "square", "diamond", "triangle" and "triangle-down".</p>

<p>Additionally, the URL to a graphic can be given on this form:  "url(graphic.png)". Note that for the image to be applied to exported charts, its URL needs to be accessible by the export server.</p>

<p>Custom callbacks for symbol path generation can also be added to <code>Highcharts.SVGRenderer.prototype.symbols</code>. The callback is then used by its method name, as shown in the demo.</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-marker-symbol/" target="_blank">Predefined, graphic and custom markers</a>
* accepted values: [null, "circle", "square", "diamond", "triangle", "triangle-down"]
*/
@property(nonatomic, readwrite) NSString *symbol;
/**
* description: Image markers only. Set the image width explicitly. When using this option, a <code>height</code> must also be set.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-marker-width-height/" target="_blank">Fixed width and height</a>
*/
@property(nonatomic, readwrite) NSNumber *width;
/**
* description: The width of the point marker's outline.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-marker-fillcolor/" target="_blank">2px blue marker</a>
*/
@property(nonatomic, readwrite) NSNumber *lineWidth;

-(NSDictionary *)getParams;

@end
