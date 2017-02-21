#import "HIChartsJSONSerializable.h"


/**
* description: The chart's subtitle
*/
@interface Subtitle: HIChartsJSONSerializable

/**
* description: Whether to <a href="http://www.highcharts.com/docs/chart-concepts/labels-and-string-formatting#html">use HTML</a> to render the text.
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *useHTML;
/**
* description: The horizontal alignment of the subtitle. Can be one of "left", "center" and "right".
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/subtitle/align/" target="_blank">Footnote at right of plot area</a>
* accepted values: ["left", "center", "right"]
*/
@property(nonatomic, readwrite) NSString *align;
/**
* description: The vertical alignment of the title. Can be one of "top", "middle" and "bottom". When a value is given, the title behaves as floating.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/subtitle/verticalalign/" target="_blank">Footnote at the bottom right of plot area</a>
* accepted values: ["top", "middle", "bottom"]
*/
@property(nonatomic, readwrite) NSString *verticalAlign;
/**
* description: <p>CSS styles for the title.</p>

<p>In <a href="http://www.highcharts.com/docs/chart-design-and-style/style-by-css">styled mode</a>, the subtitle style is given in the <code>.highcharts-subtitle</code> class.</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/subtitle/style/" target="_blank">Custom color and weight</a>.

<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/css/titles/" target="_blank">Styled mode</a>.
*/
@property(nonatomic, readwrite) NSMutableDictionary /* <NSString, NSString> */ *style;
/**
* description: The subtitle of the chart.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/subtitle/text/" target="_blank">Custom subtitle</a>,
			<a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/subtitle/text-formatted/" target="_blank">formatted and linked text.</a>
*/
@property(nonatomic, readwrite) NSString *text;
/**
* description: When the subtitle is floating, the plot area will not move to make space for it.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/subtitle/floating/" target="_blank">Floating title and subtitle</a>.
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *floating;
/**
* description: The x position of the subtitle relative to the alignment within chart.spacingLeft and chart.spacingRight.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/subtitle/align/" target="_blank">Footnote at right of plot area</a>
*/
@property(nonatomic, readwrite) NSNumber *x;
/**
* description: The y position of the subtitle relative to the alignment within chart.spacingTop and chart.spacingBottom. By default the subtitle is laid out below the title unless the title is floating.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/subtitle/verticalalign/" target="_blank">Footnote at the bottom right of plot area</a>
*/
@property(nonatomic, readwrite) NSNumber *y;
/**
* description: Adjustment made to the subtitle width, normally to reserve space for the exporting burger menu.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/title/widthadjust/" target="_blank">Wider menu, greater padding</a>
*/
@property(nonatomic, readwrite) NSNumber *widthAdjust;

-(NSDictionary *)getParams;

@end
