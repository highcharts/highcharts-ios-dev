#import "HIChartsJSONSerializable.h"
#import "HexColor.h"


/**
* description: The appearance of the point marker when selected. In order to allow a point to be 
		selected, set the <code>series.allowPointSelect</code> option to true.
*/
@interface LineMarkerStatesSelect: HIChartsJSONSerializable

/**
* description: The color of the point marker's outline. When <code>null</code>, the series' or point's color is used.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-marker-states-select-linecolor/" target="_blank">Red line color for selected points</a>
*/
@property(nonatomic, readwrite) HexColor *lineColor;
/**
* description: The width of the point marker's outline.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-marker-states-select-linewidth/" target="_blank">3px line width for selected points</a>
*/
@property(nonatomic, readwrite) NSNumber *lineWidth;
/**
* description: Enable or disable visible feedback for selection.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-marker-states-select-enabled/" target="_blank">Disabled select state</a>
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *enabled;
/**
* description: The radius of the point marker. In hover state, it defaults
		to the normal state's radius + 2.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-marker-states-select-radius/" target="_blank">10px radius for selected points</a>
*/
@property(nonatomic, readwrite) NSNumber *radius;
/**
* description: The fill color of the point marker.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-marker-states-select-fillcolor/" target="_blank">Solid red discs for selected points</a>
*/
@property(nonatomic, readwrite) HexColor *fillColor;

-(NSDictionary *)getParams;

@end
