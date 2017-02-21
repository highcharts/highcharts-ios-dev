#import "HIChartsJSONSerializable.h"


/**
* description: Text labels for the plot bands
*/
@interface XAxisPlotBandsLabel: HIChartsJSONSerializable

/**
* description: <p>Whether to <a href="http://www.highcharts.com/docs/chart-concepts/labels-and-string-formatting#html">use HTML</a> to render the labels.
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *useHTML;
/**
* description: Horizontal alignment of the label. Can be one of "left", "center" or "right".
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/plotbands-label-align/" target="_blank">Aligned to the right</a>
*/
@property(nonatomic, readwrite) NSString *align;
/**
* description: Vertical position of the text baseline relative to the alignment. Default varies by orientation.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/plotbands-label-y/" target="_blank">Label on x axis</a>
*/
@property(nonatomic, readwrite) NSNumber *y;
/**
* description: <p>CSS styles for the text label.</p>

<p>In <a href="http://www.highcharts.com/docs/chart-design-and-style/style-by-css">styled mode</a>, the labels are styled by the <code>.highcharts-plot-band-label</code> class.</p>
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/plotbands-label-style/" target="_blank">Blue and bold label</a>
*/
@property(nonatomic, readwrite) id style;
/**
* description: Horizontal position relative the alignment. Default varies by orientation.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/plotbands-label-align/" target="_blank">Aligned 10px from the right edge</a>
*/
@property(nonatomic, readwrite) NSNumber *x;
/**
* description: Vertical alignment of the label relative to the plot band. Can be one of "top", "middle" or "bottom".
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/plotbands-label-verticalalign/" target="_blank">Vertically centered label</a>
*/
@property(nonatomic, readwrite) NSString *verticalAlign;
/**
* description: The text alignment for the label. While <code>align</code> determines where the texts anchor point is placed within the plot band, <code>textAlign</code> determines how the text is aligned against its anchor point. Possible values are "left", "center" and "right". Defaults to the same as the <code>align</code> option.
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/plotbands-label-rotation/" target="_blank">Vertical text in center position but text-aligned left</a>
*/
@property(nonatomic, readwrite) NSString *textAlign;
/**
* description: Rotation of the text label in degrees .
* demo: <a href="http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/plotbands-label-rotation/" target="_blank">Vertical text</a>
*/
@property(nonatomic, readwrite) NSNumber *rotation;
/**
* description: The string text itself. A subset of HTML is supported.
*/
@property(nonatomic, readwrite) NSString *text;

-(NSDictionary *)getParams;

@end
