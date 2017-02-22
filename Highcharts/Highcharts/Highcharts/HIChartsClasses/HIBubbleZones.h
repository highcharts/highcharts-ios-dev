#import "HIChartsJSONSerializable.h"
#import "HIHexColor.h"


/**
* description: <p>An array defining zones within a series. Zones can be applied to the X axis, Y axis or Z axis for bubbles, according to the <code>zoneAxis</code> option.</p>

<p>In <a href="http://www.highcharts.com/docs/chart-design-and-style/style-by-css">styled mode</a>, the color zones are styled with the <code>.highcharts-zone-{n}</code> class, or custom classed from the <code>className</code> option (<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/css/color-zones/">view live demo</a>).</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/series/color-zones-simple/" target="_blank">Color zones</a>
*/
@interface HIBubbleZones: HIChartsJSONSerializable

/**
* description: <a href="http://www.highcharts.com/docs/chart-design-and-style/style-by-css">Styled mode</a> only. A custom class name for the zone.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/css/color-zones/" target="_blank">Zones styled by class name</a>.
*/
@property(nonatomic, readwrite) NSString *className;
/**
* description: Defines the fill color for the series (in area type series)
*/
@property(nonatomic, readwrite) HIHexColor *fillColor;
/**
* description: A name for the dash style to use for the graph.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/series/color-zones-dashstyle-dot/" target="_blank">Dashed line indicates prognosis</a>
*/
@property(nonatomic, readwrite) NSString *dashStyle;
/**
* description: Defines the color of the series.
*/
@property(nonatomic, readwrite) HIHexColor *color;
/**
* description: The value up to where the zone extends, if undefined the zones stretches to the last value in the series.
*/
@property(nonatomic, readwrite) NSNumber *value;

-(NSDictionary *)getParams;

@end
