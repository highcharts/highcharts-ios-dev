#import "HIChartsJSONSerializable.h"


/**
* description: Options for keyboard navigation.
*/
@interface HIAccessibilityKeyboardNavigation: HIChartsJSONSerializable

/**
* description: Skip null points when navigating through points with the keyboard.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/accessibility/advanced-accessible/">Accessible complex chart</a>
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *skipNullPoints;
/**
* description: Enable keyboard navigation for the chart.
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *enabled;

-(NSDictionary *)getParams;

@end
