#import "HIChartsJSONSerializable.h"
#import "HIHexColor.h"


/**
* description: Options for the hovered series
*/
@interface HITreemapStatesHover: HIChartsJSONSerializable

/**
* description: A specific border color for the hovered point. Defaults to inherit the normal state border color.
*/
@property(nonatomic, readwrite) HIHexColor *borderColor;
/**
* description: Enable separate styles for the hovered series to visualize that the user hovers either the series itself or the legend.			.
* demo: Disable hover on http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-states-hover-enabled/ : line,
			http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-states-hover-enabled-column/ : column,
			http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-states-hover-enabled-pie/ : pie
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *enabled;
/**
* description: A specific color for the hovered point.
*/
@property(nonatomic, readwrite) HIHexColor *color;
/**
* description: The opacity of a point in treemap. When a point has children, the visibility of the children is determined by the opacity. 
*/
@property(nonatomic, readwrite) NSNumber *opacity;
/**
* description: How much to brighten the point on interaction. Requires the main color to be defined in hex or rgb(a) format.
In http://www.highcharts.com/docs/chart-design-and-style/style-by-css : styled mode, the hover brightening is by default replaced with a fill-opacity set in the .highcharts-point:hover rule.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/column-states-hover-brightness/ : Brighten by 0.5
*/
@property(nonatomic, readwrite) NSNumber *brightness;

-(NSDictionary *)getParams;

@end
