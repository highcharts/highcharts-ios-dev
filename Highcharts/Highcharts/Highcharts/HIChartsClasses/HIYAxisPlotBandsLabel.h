#import "HIChartsJSONSerializable.h"


/**
* description: Text labels for the plot bands
*/
@interface HIYAxisPlotBandsLabel: HIChartsJSONSerializable

/**
* description: Whether to http://www.highcharts.com/docs/chart-concepts/labels-and-string-formatting#html : use HTML to render the labels.
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *useHTML;
/**
* description: Vertical alignment of the label relative to the plot band. Can be one of "top", "middle" or "bottom".
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/plotbands-label-verticalalign/ : Vertically centered label
*/
@property(nonatomic, readwrite) NSString *verticalAlign;
/**
* description: The text alignment for the label. While align determines where the texts anchor point is placed within the plot band, textAlign determines how the text is aligned against its anchor point. Possible values are "left", "center" and "right". Defaults to the same as the align option.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/plotbands-label-rotation/ : Vertical text in center position but text-aligned left
*/
@property(nonatomic, readwrite) NSString *textAlign;
/**
* description: CSS styles for the text label.
In http://www.highcharts.com/docs/chart-design-and-style/style-by-css : styled mode, the labels are styled by the .highcharts-plot-band-label class.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/plotbands-label-style/ : Blue and bold label
*/
@property(nonatomic, readwrite) id style;
/**
* description: Horizontal position relative the alignment. Default varies by orientation.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/plotbands-label-align/ : Aligned 10px from the right edge
*/
@property(nonatomic, readwrite) NSNumber *x;
/**
* description: Vertical position of the text baseline relative to the alignment. Default varies by orientation.
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/plotbands-label-y/ : Label on x axis
*/
@property(nonatomic, readwrite) NSNumber *y;
/**
* description: Horizontal alignment of the label. Can be one of "left", "center" or "right".
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/plotbands-label-align/ : Aligned to the right
*/
@property(nonatomic, readwrite) NSString *align;
/**
* description: The string text itself. A subset of HTML is supported.
*/
@property(nonatomic, readwrite) NSString *text;
/**
* description: Rotation of the text label in degrees .
* demo: http://jsfiddle.net/gh/get/jquery/3.1.1/highcharts/highcharts/tree/master/samples/highcharts/xaxis/plotbands-label-rotation/ : Vertical text
*/
@property(nonatomic, readwrite) NSNumber *rotation;

-(NSDictionary *)getParams;

@end