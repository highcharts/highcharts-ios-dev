#import "HIChartsJSONSerializable.h"
#import "HIHexColor.h"


/**
* description: The appearance of the point marker when selected. In order to allow a point to be 
		selected, set the series.allowPointSelect option to true.
*/
@interface HIAreaMarkerStatesSelect: HIChartsJSONSerializable

/**
* description: The fill color of the point marker.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-marker-states-select-fillcolor/ : Solid red discs for selected points
*/
@property(nonatomic, readwrite) HIHexColor *fillColor;
/**
* description: The width of the point marker's outline.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-marker-states-select-linewidth/ : 3px line width for selected points
*/
@property(nonatomic, readwrite) NSNumber *lineWidth;
/**
* description: Enable or disable visible feedback for selection.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-marker-states-select-enabled/ : Disabled select state
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *enabled;
/**
* description: The color of the point marker's outline. When null, the series' or point's color is used.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-marker-states-select-linecolor/ : Red line color for selected points
*/
@property(nonatomic, readwrite) HIHexColor *lineColor;
/**
* description: The radius of the point marker. In hover state, it defaults
		to the normal state's radius + 2.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-marker-states-select-radius/ : 10px radius for selected points
*/
@property(nonatomic, readwrite) NSNumber *radius;

-(NSDictionary *)getParams;

@end
