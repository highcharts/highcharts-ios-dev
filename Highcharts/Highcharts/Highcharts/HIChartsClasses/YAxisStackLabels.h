#import "HIChartsJSONSerializable.h"


/**
* description: The stack labels show the total value for each bar in a stacked column or bar chart. The label will be placed on top of
	positive columns and below negative columns. In case of an inverted column chart or a bar chart the label is placed to 
	the right of positive bars and to the left of negative bars.
*/
@interface YAxisStackLabels: HIChartsJSONSerializable

/**
* description: <p>CSS styles for the label.</p>

<p>In <a href="http://www.highcharts.com/docs/chart-design-and-style/style-by-css">styled mode</a>, the styles are set in the <code>.highcharts-stack-label</code> class.</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/yaxis/stacklabels-style/" target="_blank">Red stack total labels</a>
*/
@property(nonatomic, readwrite) NSMutableDictionary /* <NSString, NSString> */ *style;
/**
* description: A <a href="http://docs.highcharts.com/#formatting">format string</a> for the data label. Available variables are the same as for <code>formatter</code>.
*/
@property(nonatomic, readwrite) NSString *format;
/**
* description: Defines the horizontal alignment of the stack total label.  Can be one of <code>"left"</code>, <code>"center"</code> or <code>"right"</code>. The default value is calculated at runtime and depends on orientation and whether  the stack is positive or negative.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/yaxis/stacklabels-align-left/" target="_blank">aligned to the left</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/yaxis/stacklabels-align-center/" target="_blank">aligned in center</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/yaxis/stacklabels-align-right/" target="_blank">aligned to the right</a>
* accepted values: ["left", "center", "right"]
*/
@property(nonatomic, readwrite) NSString *align;
/**
* description: The x position offset of the label relative to the left of the stacked bar. The default value is calculated at runtime and depends on orientation and whether the stack is positive or negative.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/yaxis/stacklabels-x/" target="_blank">Stack total labels with x offset</a>
*/
@property(nonatomic, readwrite) NSNumber *x;
/**
* description: The y position offset of the label relative to the tick position on the axis. The default value is calculated at runtime and depends on orientation and whether  the stack is positive or negative.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/yaxis/stacklabels-y/" target="_blank">Stack total labels with y offset</a>
*/
@property(nonatomic, readwrite) NSNumber *y;
/**
* description: Whether to <a href="http://docs.highcharts.com/#formatting$html">use HTML</a> to render the labels.
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *useHTML;
/**
* description: Rotation of the labels in degrees.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/yaxis/stacklabels-rotation/" target="_blank">Labels rotated 45Â°</a>
*/
@property(nonatomic, readwrite) NSNumber *rotation;
/**
* description: The text alignment for the label. While <code>align</code> determines where the texts anchor point is placed with regards to the stack, <code>textAlign</code> determines how the text is aligned against its anchor point. Possible values are <code>"left"</code>, <code>"center"</code> and <code>"right"</code>. The default value is calculated at runtime and depends on orientation and whether the stack is positive or negative.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/yaxis/stacklabels-textalign-left/" target="_blank">Label in center position but text-aligned left</a>
* accepted values: ["left", "center", "right"]
*/
@property(nonatomic, readwrite) NSString *textAlign;
/**
* description: Enable or disable the stack total labels.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/yaxis/stacklabels-enabled/" target="_blank">Enabled stack total labels</a>
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *enabled;
/**
* description: Defines the vertical alignment of the stack total label. Can be one of <code>"top"</code>, <code>"middle"</code> or <code>"bottom"</code>. The default value is calculated at runtime and depends on orientation and whether  the stack is positive or negative.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/yaxis/stacklabels-verticalalign-top/" target="_blank">"Vertically aligned top"</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/yaxis/stacklabels-verticalalign-middle/" target="_blank">"Vertically aligned middle"</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/yaxis/stacklabels-verticalalign-bottom/" target="_blank">"Vertically aligned bottom"</a>
* accepted values: ["top", "middle", "bottom"]
*/
@property(nonatomic, readwrite) NSString *verticalAlign;
/**
* description: Callback JavaScript function to format the label. The value is  given by <code>this.total</code>. Defaults to: 
<pre>function() {
	return this.total;
}</pre>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/yaxis/stacklabels-formatter/" target="_blank">Added units to stack total value</a>
*/
@property(nonatomic, readwrite) NSString /* Function? */ *formatter;

-(NSDictionary *)getParams;

@end
