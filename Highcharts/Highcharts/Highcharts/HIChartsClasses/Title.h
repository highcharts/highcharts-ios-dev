#import "HIChartsJSONSerializable.h"


/**
* description: The chart's main title.
*/
@interface Title: HIChartsJSONSerializable

/**
* description: <p>CSS styles for the title. Use this for font styling, but use <code>align</code>, <code>x</code> and <code>y</code> for text alignment.</p>

<p>In <a href="http://www.highcharts.com/docs/chart-design-and-style/style-by-css">styled mode</a>, the title style is given in the <code>.highcharts-title</code> class.</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/title/style/" target="_blank">Custom color and weight</a>.

<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/css/titles/" target="_blank">Styled mode</a>.
*/
@property(nonatomic, readwrite) NSMutableDictionary /* <NSString, NSString> */ *style;
/**
* description: Whether to <a href="http://www.highcharts.com/docs/chart-concepts/labels-and-string-formatting#html">use HTML</a> to render the text.
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *useHTML;
/**
* description: The horizontal alignment of the title. Can be one of "left", "center" and "right".
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/title/align/" target="_blank">Aligned to the plot area (x = 70px 
			= margin left - spacing left)</a>
* accepted values: ["left", "center", "right"]
*/
@property(nonatomic, readwrite) NSString *align;
/**
* description: The y position of the title relative to the alignment within <a href="#chart.spacingTop">chart.spacingTop</a> and <a href="#chart.spacingBottom">chart.spacingBottom</a>. By default it depends on the font size.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/title/y/" target="_blank">Title inside the plot area</a>
*/
@property(nonatomic, readwrite) NSNumber *y;
/**
* description: The x position of the title relative to the alignment within chart.spacingLeft and chart.spacingRight.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/title/align/" target="_blank">Aligned to the plot area (x = 70px 
			= margin left - spacing left)</a>
*/
@property(nonatomic, readwrite) NSNumber *x;
/**
* description: When the title is floating, the plot area will not move to make space for it.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/chart/zoomtype-none/" target="_blank">False by default</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/title/floating/" target="_blank">true - title on top of the plot area</a>.
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *floating;
/**
* description: The margin between the title and the plot area, or if a subtitle is present, the margin between the subtitle and the plot area.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/title/margin-50/" target="_blank">A chart title margin of 50</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/title/margin-subtitle/" target="_blank">the same margin applied with a subtitle</a>.
*/
@property(nonatomic, readwrite) NSNumber *margin;
/**
* description: The title of the chart. To disable the title, set the <code>text</code> to <code>null</code>.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/title/text/" target="_blank">Custom title</a>
*/
@property(nonatomic, readwrite) NSString *text;
/**
* description: Adjustment made to the title width, normally to reserve space for the exporting burger menu.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/title/widthadjust/" target="_blank">Wider menu, greater padding</a>
*/
@property(nonatomic, readwrite) NSNumber *widthAdjust;
/**
* description: The vertical alignment of the title. Can be one of <code>"top"</code>, <code>"middle"</code> and <code>"bottom"</code>. When a value is given, the title behaves as if <a href="#title.floating">floating</a> were <code>true</code>.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/title/verticalalign/" target="_blank">Chart title in bottom right corner</a>
* accepted values: ["top", "middle", "bottom"]
*/
@property(nonatomic, readwrite) NSString *verticalAlign;

-(NSDictionary *)getParams;

@end
