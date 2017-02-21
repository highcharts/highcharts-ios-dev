#import "HIChartsJSONSerializable.h"


/**
* description: The axis title, showing next to the axis line.
*/
@interface XAxisTitle: HIChartsJSONSerializable

/**
* description: Vertical pixel offset of the title position.
*/
@property(nonatomic, readwrite) NSNumber *y;
/**
* description: Deprecated. Set the <code>text</code> to <code>null</code> to disable the title.
*/
@property(nonatomic, readwrite) NSString *enabled;
/**
* description: Alignment of the title relative to the axis values. Possible values
 are "low", "middle" or "high".
* demo: X axis title aligned <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/title-align-low/" target="_blank">"low"</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/title-align-center/" target="_blank">"middle" by default</a>, 
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/title-align-high/" target="_blank">"high"</a>, 
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/yaxis/title-offset/" target="_blank">place the Y axis title on top of the axis</a>
* accepted values: ["low", "middle", "high"]
*/
@property(nonatomic, readwrite) NSString *align;
/**
* description: Horizontal pixel offset of the title position.
*/
@property(nonatomic, readwrite) NSNumber *x;
/**
* description: The pixel distance between the axis labels or line and the title. Defaults to 0 for horizontal axes, 10 for vertical
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/title-margin/" target="_blank">Y axis title margin of 60</a>
*/
@property(nonatomic, readwrite) NSNumber *margin;
/**
* description: The rotation of the text in degrees. 0 is horizontal, 270 is vertical reading from bottom to top.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/yaxis/title-offset/" target="_blank">Horizontal</a> Y axis title
*/
@property(nonatomic, readwrite) NSNumber *rotation;
/**
* description: The actual text of the axis title. It can contain basic HTML text markup like &lt;b&gt;, &lt;i&gt; and spans with style.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/title-text/" target="_blank">Custom HTML</a> title for X axis
*/
@property(nonatomic, readwrite) NSString *text;
/**
* description: The distance of the axis title from the axis line. By default, this distance is  computed from the offset width of the labels, the labels' distance from  the axis and the title's margin. However when the offset option is set, it overrides all this.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/yaxis/title-offset/" target="_blank">Place the axis title on top of the axis</a>
*/
@property(nonatomic, readwrite) NSNumber *offset;
/**
* description: <p>CSS styles for the title. When titles are rotated they are rendered using vector graphic techniques and not all styles are applicable.</p>

<p>In <a href="http://www.highcharts.com/docs/chart-design-and-style/style-by-css">styled mode</a>, the stroke width is given in the <code>.highcharts-axis-title</code> class.</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/title-style/" target="_blank">Red</a> Y axis title.

<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/css/axis/" target="_blank">Styled mode</a>.

*/
@property(nonatomic, readwrite) NSMutableDictionary /* <NSString, NSString> */ *style;

-(NSDictionary *)getParams;

@end
