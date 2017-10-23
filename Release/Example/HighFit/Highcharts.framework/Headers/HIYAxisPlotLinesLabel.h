/**
* (c) 2009-2017 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HIChartsJSONSerializable.h"


/**
* description: Text labels for the plot bands
*/
@interface HIYAxisPlotLinesLabel: HIChartsJSONSerializable

/**
* description: Vertical alignment of the label relative to the plot line. Can be
one of "top", "middle" or "bottom".

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/xaxis/plotlines-label-verticalalign-middle/ : Vertically centered label
* accepted values: ["top", "middle", "bottom"]
*/
@property(nonatomic, readwrite) NSString *verticalAlign;
/**
* description: The text alignment for the label. While align determines where
the texts anchor point is placed within the plot band, textAlign
determines how the text is aligned against its anchor point. Possible
values are "left", "center" and "right". Defaults to the same as
the align option.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/xaxis/plotlines-label-textalign/ : Text label in bottom position
*/
@property(nonatomic, readwrite) NSString *textAlign;
/**
* description: The text itself. A subset of HTML is supported.
*/
@property(nonatomic, readwrite) NSString *text;
/**
* description: CSS styles for the text label.
In styled mode, the labels are styled by the
.highcharts-plot-line-label class.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/xaxis/plotlines-label-style/ : Blue and bold label
*/
@property(nonatomic, readwrite) id style;
/**
* description: Vertical position of the text baseline relative to the alignment.
 Default varies by orientation.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/xaxis/plotlines-label-y/ : Label below the plot line
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/stock/xaxis/plotlines/ : Plot line on Y axis
*/
@property(nonatomic, readwrite) NSNumber *y;
/**
* description: Horizontal position relative the alignment. Default varies by orientation.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/xaxis/plotlines-label-align-right/ : Aligned 10px from the right edge
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/stock/xaxis/plotlines/ : Plot line on Y axis
*/
@property(nonatomic, readwrite) NSNumber *x;
/**
* description: Whether to http://www.highcharts.com/docs/chart-concepts/labels-
and-string-formatting#html : use HTML to render the labels.
* default: false
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *useHTML;
/**
* description: Horizontal alignment of the label. Can be one of "left", "center"
or "right".

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/xaxis/plotlines-label-align-right/ : Aligned to the right
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/stock/xaxis/plotlines/ : Plot line on Y axis
* default: left
*/
@property(nonatomic, readwrite) NSString *align;
/**
* description: Rotation of the text label in degrees. Defaults to 0 for horizontal
plot lines and 90 for vertical lines.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/xaxis/plotlines-label-verticalalign-middle/ : Slanted text
*/
@property(nonatomic, readwrite) NSNumber *rotation;

-(NSDictionary *)getParams;

@end
