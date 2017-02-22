#import "HIChartsJSONSerializable.h"


/**
* description: The loading options control the appearance of the loading screen that covers the 
	plot area on chart operations. This screen only appears after an explicit call
	to <code>chart.showLoading()</code>. It is a utility for developers to communicate
	to the end user that something is going on, for example while retrieving new data
	via an XHR connection. The "Loading..." text itself is not part of this configuration
	object, but part of the <code>lang</code> object.
*/
@interface HILoading: HIChartsJSONSerializable

/**
* description: The duration in milliseconds of the fade in effect.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/loading/hideduration/" target="_blank">Fade in and out over a second</a>
*/
@property(nonatomic, readwrite) NSNumber *showDuration;
/**
* description: CSS styles for the loading screen that covers the plot area.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/loading/style/" target="_blank">Gray plot area, white text</a>
*/
@property(nonatomic, readwrite) NSMutableDictionary /* <NSString, NSString> */ *style;
/**
* description: CSS styles for the loading label <code>span</code>.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/loading/labelstyle/" target="_blank">Vertically centered</a>
*/
@property(nonatomic, readwrite) NSMutableDictionary /* <NSString, NSString> */ *labelStyle;
/**
* description: The duration in milliseconds of the fade out effect.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/loading/hideduration/" target="_blank">Fade in and out over a second</a>
*/
@property(nonatomic, readwrite) NSNumber *hideDuration;

-(NSDictionary *)getParams;

@end
