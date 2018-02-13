/**
* (c) 2009-2018 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HIStyle.h"


/**
* description: Text labels for the plot bands
*/
@interface HILabel: HIChartsJSONSerializable

/**
* description: CSS styles for the text label.

In styled mode, the labels are styled by the
.highcharts-plot-line-label class.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/xaxis/plotlines-label-style/ : Blue and bold label
*/
@property(nonatomic, readwrite) HIStyle *style;
/**
* description: Vertical alignment of the label relative to the plot line. Can be
one of "top", "middle" or "bottom".
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/xaxis/plotlines-label-verticalalign-middle/ : Vertically centered label
* accepted values: ["top", "middle", "bottom"]
* default: top
*/
@property(nonatomic, readwrite) NSString *verticalAlign;
/**
* description: The text itself. A subset of HTML is supported.
*/
@property(nonatomic, readwrite) NSString *text;
/**
* description: Horizontal alignment of the label. Can be one of "left", "center"
or "right".
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/xaxis/plotlines-label-align-right/ : Aligned to the right
* default: left
*/
@property(nonatomic, readwrite) NSString *align;
/**
* description: The text alignment for the label. While align determines where
the texts anchor point is placed within the plot band, textAlign
determines how the text is aligned against its anchor point. Possible
values are "left", "center" and "right". Defaults to the same as
the align option.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/xaxis/plotlines-label-textalign/ : Text label in bottom position
*/
@property(nonatomic, readwrite) NSString *textAlign;
/**
* description: Vertical position of the text baseline relative to the alignment.
 Default varies by orientation.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/xaxis/plotlines-label-y/ : Label below the plot line
*/
@property(nonatomic, readwrite) NSNumber *y;
/**
* description: Horizontal position relative the alignment. Default varies by orientation.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/xaxis/plotlines-label-align-right/ : Aligned 10px from the right edge
*/
@property(nonatomic, readwrite) NSNumber *x;
/**
* description: Rotation of the text label in degrees. Defaults to 0 for horizontal
plot lines and 90 for vertical lines.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/xaxis/plotlines-label-verticalalign-middle/ : Slanted text
*/
@property(nonatomic, readwrite) NSNumber *rotation;
/**
* description: Whether to [use HTML](http://www.highcharts.com/docs/chart-concepts/labels-
and-string-formatting#html) to render the labels.
* default: false
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *useHTML;
/**
* description: For area-like series, allow the font size to vary so that
small areas get a smaller font size. The default applies this
effect to area-like series but not line-like series.
*/
@property(nonatomic, readwrite) NSNumber *minFontSize;
/**
* description: For area-like series, allow the font size to vary so that
small areas get a smaller font size. The default applies this
effect to area-like series but not line-like series.
*/
@property(nonatomic, readwrite) NSNumber *maxFontSize;
/**
* description: Enable the series label per series.
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *enabled;
/**
* description: If the label is closer than this to a neighbour graph, draw a
connector.
*/
@property(nonatomic, readwrite) NSNumber *connectorNeighbourDistance;
/**
* description: Draw the label on the area of an area series. By default it
is drawn on the area. Set it to false to draw it next to
the graph instead.
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *onArea;
/**
* description: An array of boxes to avoid when laying out the labels. Each 
item has a left, right, top and bottom property.
*/
@property(nonatomic, readwrite) NSArray *boxesToAvoid;
/**
* description: Allow labels to be placed distant to the graph if necessary,
and draw a connector line to the graph.
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *connectorAllowed;

-(NSDictionary *)getParams;

@end
