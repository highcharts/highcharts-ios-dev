#import "HIChartsJSONSerializable.h"


/**
* description: Text labels for the plot bands
*/
@interface HIZAxisPlotLinesLabel: HIChartsJSONSerializable

/**
* description: Horizontal alignment of the label. Can be one of "left", "center" or "right".
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/plotlines-label-align-right/" target="_blank">Aligned to the right</a>
*/
@property(nonatomic, readwrite) NSString *align;
/**
* description: Vertical alignment of the label relative to the plot band. Can be one of "top", "middle" or "bottom".
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/plotlines-label-verticalalign-middle/" target="_blank">Vertically centered label</a>
* accepted values: ["top", "middle", "bottom"]
*/
@property(nonatomic, readwrite) NSString *verticalAlign;
/**
* description: <p>CSS styles for the text label.</p>

<p>In <a href="http://www.highcharts.com/docs/chart-design-and-style/style-by-css">styled mode</a>, the labels are styled by the <code>.highcharts-plot-band-label</code> class.</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/plotlines-label-style/" target="_blank">Blue and bold label</a>
*/
@property(nonatomic, readwrite) id style;
/**
* description: The text alignment for the label. While <code>align</code> determines where the texts anchor point is placed within the plot band, <code>textAlign</code> determines how the text is aligned against its anchor point. Possible values are "left", "center" and "right". Defaults to the same as the <code>align</code> option.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/plotlines-label-textalign/" target="_blank">Text label in bottom position</a>
*/
@property(nonatomic, readwrite) NSString *textAlign;
/**
* description: Rotation of the text label in degrees. Defaults to 0 for horizontal plot lines and 90 for vertical lines.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/plotlines-label-verticalalign-middle/" target="_blank">Slanted text</a>
*/
@property(nonatomic, readwrite) NSNumber *rotation;
/**
* description: The text itself. A subset of HTML is supported.
*/
@property(nonatomic, readwrite) NSString *text;
/**
* description: Horizontal position relative the alignment. Default varies by orientation.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/plotlines-label-align-right/" target="_blank">Aligned 10px from the right edge</a>
*/
@property(nonatomic, readwrite) NSNumber *x;
/**
* description: Vertical position of the text baseline relative to the alignment. Default varies by orientation.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/plotlines-label-y/" target="_blank">Label below the plot line</a>
*/
@property(nonatomic, readwrite) NSNumber *y;
/**
* description: <p>Whether to <a href="http://www.highcharts.com/docs/chart-concepts/labels-and-string-formatting#html">use HTML</a> to render the labels.
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *useHTML;

-(NSDictionary *)getParams;

@end
