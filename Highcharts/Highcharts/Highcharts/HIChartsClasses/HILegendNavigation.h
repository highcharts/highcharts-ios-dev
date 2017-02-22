#import "HIChartsJSONSerializable.h"
#import "HIHexColor.h"


/**
* description: Options for the paging or navigation appearing when the legend is overflown. Navigation works well on screen, but not in static exported images. One way of working around that is to <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/legend/navigation-enabled-false/">increase the chart height in export</a>.
*/
@interface HILegendNavigation: HIChartsJSONSerializable

/**
* description: The color of the inactive up or down arrow in the legend page navigation.  .
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/legend/navigation/" target="_blank">
				Legend page navigation demonstrated</a>
*/
@property(nonatomic, readwrite) HIHexColor *inactiveColor;
/**
* description: How to animate the pages when navigating up or down. A value of <code>true</code> applies the default navigation given in  the chart.animation option. Additional options can be given as an object containing values for easing and duration.  .
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/legend/navigation/" target="_blank">
				Legend page navigation demonstrated</a>
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *animation;
/**
* description: <p>Whether to enable the legend navigation. In most cases, disabling the navigation results in an unwanted overflow.</p>

<p>See also the <a href="http://www.highcharts.com/plugin-registry/single/8/Adapt-Chart-To-Legend">adapt chart to legend</a> plugin for a solution to extend the chart height to make room for the legend, optionally in exported charts only.</p>
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *enabled;
/**
* description: The pixel size of the up and down arrows in the legend paging navigation.  .
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/legend/navigation/" target="_blank">
				Legend page navigation demonstrated</a>
*/
@property(nonatomic, readwrite) NSNumber *arrowSize;
/**
* description: The color for the active up or down arrow in the legend page navigation.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/legend/navigation/" target="_blank">
				Legend page navigation demonstrated</a>
*/
@property(nonatomic, readwrite) HIHexColor *activeColor;
/**
* description: Text styles for the legend page navigation.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/legend/navigation/" target="_blank">
				Legend page navigation demonstrated</a>
*/
@property(nonatomic, readwrite) NSMutableDictionary /* <NSString, NSString> */ *style;

-(NSDictionary *)getParams;

@end
