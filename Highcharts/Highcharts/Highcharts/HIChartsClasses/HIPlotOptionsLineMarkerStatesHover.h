#import "HIChartsJSONSerializable.h"
#import "HIHexColor.h"


@interface HIPlotOptionsLineMarkerStatesHover: HIChartsJSONSerializable

/**
* description: The color of the point marker's outline. When <code>null</code>, the series' or point's color is used.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-marker-states-hover-linecolor/" target="_blank">White fill color, black line color</a>
*/
@property(nonatomic, readwrite) HIHexColor *lineColor;
/**
* description: The fill color of the marker in hover state.
*/
@property(nonatomic, readwrite) HIHexColor *fillColor;
/**
* description: The additional line width for a hovered point.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-states-hover-linewidthplus/" target="_blank">2 pixels wider on hover</a>
*/
@property(nonatomic, readwrite) NSNumber *lineWidthPlus;
/**
* description: The number of pixels to increase the radius of the hovered point.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-states-hover-linewidthplus/" target="_blank">5 pixels greater radius on hover</a>
*/
@property(nonatomic, readwrite) NSNumber *radiusPlus;
/**
* description: Enable or disable the point marker.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-marker-states-hover-enabled/" target="_blank">Disabled hover state</a>
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *enabled;
/**
* description: The width of the point marker's outline.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-marker-states-hover-linewidth/" target="_blank">3px line width</a>
*/
@property(nonatomic, readwrite) NSNumber *lineWidth;
/**
* description: The radius of the point marker. In hover state, it defaults to the normal state's radius + 2 as per the <a href="#plotOptions.series.marker.states.hover.radiusPlus">radiusPlus</a> option.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-marker-states-hover-radius/" target="_blank">10px radius</a>
*/
@property(nonatomic, readwrite) NSNumber *radius;

-(NSDictionary *)getParams;

@end
