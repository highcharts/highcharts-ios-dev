#import "ChartResetZoomButtonPosition.h"


/**
* description: The button that appears after a selection zoom, allowing the user to reset zoom.
*/
@interface ChartResetZoomButton: HIChartsJSONSerializable

/**
* description: The position of the button.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/resetzoombutton-position/" target="_blank">Above the plot area</a>
*/
@property(nonatomic, readwrite) ChartResetZoomButtonPosition *position;
/**
* description: A collection of attributes for the button. The object takes SVG attributes like  <code>fill</code>, <code>stroke</code>, <code>stroke-width</code> or <code>r</code>, the border radius. The theme also supports <code>style</code>, a collection of CSS properties for the text. Equivalent attributes for the hover state are given in <code>theme.states.hover</code>.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/resetzoombutton-theme/" target="_blank">Theming the button</a>
*/
@property(nonatomic, readwrite) id theme;
/**
* description: What frame the button should be placed related to. Can be either "plot" or "chart".
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/resetzoombutton-relativeto/" target="_blank">Relative to the chart</a>
* accepted values: ["plot", "chart"]
*/
@property(nonatomic, readwrite) NSString *relativeTo;

-(NSDictionary *)getParams;

@end
