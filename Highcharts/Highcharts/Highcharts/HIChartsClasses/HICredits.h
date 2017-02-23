#import "HICreditsPosition.h"


/**
* description: Highchart by default puts a credits label in the lower right corner of the chart.
		This can be changed using these options.
*/
@interface HICredits: HIChartsJSONSerializable

/**
* description: Position configuration for the credits label.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/credits/position-left/ : Left aligned
*/
@property(nonatomic, readwrite) HICreditsPosition *position;
/**
* description: CSS styles for the credits label.
*/
@property(nonatomic, readwrite) NSMutableDictionary /* <NSString, NSString> */ *style;
/**
* description: The URL for the credits label.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/credits/href/ : Custom URL and text
*/
@property(nonatomic, readwrite) NSString *href;
/**
* description: The text for the credits label.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/credits/href/ : Custom URL and text
*/
@property(nonatomic, readwrite) NSString *text;
/**
* description: Whether to show the credits text.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/credits/enabled-false/ : Credits disabled
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *enabled;

-(NSDictionary *)getParams;

@end
