#import "HIChartsJSONSerializable.h"


/**
* description: The position of the button.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/resetzoombutton-position/" target="_blank">Above the plot area</a>
*/
@interface HIChartResetZoomButtonPosition: HIChartsJSONSerializable

/**
* description: The heatmap series type. This series type is available both in Highcharts and Highmaps.
*/
@property(nonatomic, readwrite) NSString *align;
/**
* description: The vertical offset of the button.
*/
@property(nonatomic, readwrite) NSNumber *y;
/**
* description: The horizontal offset of the button
*/
@property(nonatomic, readwrite) NSNumber *x;
/**
* description: The vertical alignment of the button.
* accepted values: ["top", "middle", "bottom"]
*/
@property(nonatomic, readwrite) NSString *verticalAlign;

-(NSDictionary *)getParams;

@end
