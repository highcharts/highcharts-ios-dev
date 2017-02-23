#import "HIChartsJSONSerializable.h"
#import "HIHexColor.h"


@interface HIPlotOptionsAreaMarkerStatesHover: HIChartsJSONSerializable

/**
* description: The radius of the point marker. In hover state, it defaults to the normal state's radius + 2 as per the radiusPlus option.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-marker-states-hover-radius/ : 10px radius
*/
@property(nonatomic, readwrite) NSNumber *radius;
/**
* description: Enable or disable the point marker.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-marker-states-hover-enabled/ : Disabled hover state
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *enabled;
/**
* description: The number of pixels to increase the radius of the hovered point.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-states-hover-linewidthplus/ : 5 pixels greater radius on hover
*/
@property(nonatomic, readwrite) NSNumber *radiusPlus;
/**
* description: The color of the point marker's outline. When null, the series' or point's color is used.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-marker-states-hover-linecolor/ : White fill color, black line color
*/
@property(nonatomic, readwrite) HIHexColor *lineColor;
/**
* description: The fill color of the marker in hover state.
*/
@property(nonatomic, readwrite) HIHexColor *fillColor;
/**
* description: The additional line width for a hovered point.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-states-hover-linewidthplus/ : 2 pixels wider on hover
*/
@property(nonatomic, readwrite) NSNumber *lineWidthPlus;
/**
* description: The width of the point marker's outline.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-marker-states-hover-linewidth/ : 3px line width
*/
@property(nonatomic, readwrite) NSNumber *lineWidth;

-(NSDictionary *)getParams;

@end
