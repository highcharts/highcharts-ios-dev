/**
* (c) 2009-2018 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HIFilter.h"
#import "HIStyle.h"
#import "HIColor.h"
#import "HIFunction.h"


/**
* description: Options for the series data labels, appearing next to each data
point.

In styled mode, the data labels can be styled wtih the
.highcharts-data-label-box and .highcharts-data-label class names
([see example](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/css/series-datalabels)).
*/
@interface HIDataLabels: HIChartsJSONSerializable

@property(nonatomic, readwrite) NSNumber /* Bool */ *defer;
@property(nonatomic, readwrite) NSNumber /* Bool */ *inside;
@property(nonatomic, readwrite) HIFunction *formatter;
@property(nonatomic, readwrite) NSNumber /* Bool */ *enabled;
@property(nonatomic, readwrite) NSString *verticalAlign;
@property(nonatomic, readwrite) NSNumber /* Bool */ *crop;
@property(nonatomic, readwrite) NSNumber *padding;
@property(nonatomic, readwrite) NSNumber /* Bool */ *overflow;
/**
* description: The x position of the data label relative to the data point.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/bar-datalabels-align-inside-bar/ : Data labels inside the bar
* default: 5
*/
@property(nonatomic, readwrite) NSNumber *x;
/**
* description: Alignment of the data label relative to the data point.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/bar-datalabels-align-inside-bar/ : Data labels inside the bar
* default: left
*/
@property(nonatomic, readwrite) NSString *align;
/**
* description: Y offset of the higher data labels relative to the point value.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/arearange-datalabels/ : Data labels on range series
* default: -6
*/
@property(nonatomic, readwrite) id /* NSNumber, NSString */ yHigh;
/**
* description: X offset of the higher data labels relative to the point value.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/arearange-datalabels/ : Data labels on range series
*/
@property(nonatomic, readwrite) NSNumber *xHigh;
/**
* description: X offset of the lower data labels relative to the point value.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/arearange-datalabels/ : Data labels on range series
*/
@property(nonatomic, readwrite) NSNumber *xLow;
/**
* description: Y offset of the lower data labels relative to the point value.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/arearange-datalabels/ : Data labels on range series
* default: 16
*/
@property(nonatomic, readwrite) id /* NSNumber, NSString */ yLow;
/**
* description: The border radius in pixels for the data label.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-datalabels-box/ : Data labels box options
* default: 0
*/
@property(nonatomic, readwrite) NSNumber *borderRadius;
/**
* description: The name of a symbol to use for the border around the label. Symbols
are predefined functions on the Renderer object.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-datalabels-shape/ : A callout for annotations
* default: square
*/
@property(nonatomic, readwrite) NSString *shape;
/**
* description: The border color for the data label. Defaults to undefined.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-datalabels-box/ : Data labels box options
* default: undefined
*/
@property(nonatomic, readwrite) HIColor *borderColor;
/**
* description: A declarative filter for which data labels to display. The
declarative filter is designed for use when callback functions are
not available, like when the chart options require a pure JSON
structure or for use with graphical editors. For programmatic
control, use the formatter instead, and return false to disable
a single data label.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/demo/pie-monochrome : Data labels filtered by percentage
*/
@property(nonatomic, readwrite) HIFilter *filter;
/**
* description: Styles for the label. The default color setting is "contrast",
which is a pseudo color that Highcharts picks up and applies the
maximum contrast to the underlying point item, for example the
bar in a bar chart.

The textOutline is a pseudo property that
applies an outline of the given width with the given color, which
by default is the maximum contrast to the text. So a bright text
color will result in a black text outline for maximum readability
on a mixed background. In some cases, especially with grayscale
text, the text outline doesn't work well, in which cases it can
be disabled by setting it to "none". When useHTML is true, the
textOutline will not be picked up. In this, case, the same effect
can be acheived through the text-shadow CSS property.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-datalabels-style/ : Bold labels
* default: {"color": "contrast", "fontSize": "11px", "fontWeight": "bold", "textOutline": "1px contrast" }
*/
@property(nonatomic, readwrite) HIStyle *style;
/**
* description: Text rotation in degrees. Note that due to a more complex structure,
backgrounds, borders and padding will be lost on a rotated data
label.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-datalabels-rotation/ : Vertical labels
* default: 0
*/
@property(nonatomic, readwrite) NSNumber *rotation;
/**
* description: Whether to
[use HTML](http://www.highcharts.com/docs/chart-concepts/labels-and-string-formatting#html)
to render the labels.
* default: false
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *useHTML;
/**
* description: The text color for the data labels. Defaults to null. For certain
series types, like column or map, the data labels can be drawn inside
the points. In this case the data label will be drawn with maximum
contrast by default. Additionally, it will be given a text-outline
style with the opposite color, to further increase the contrast. This
can be overridden by setting the text-outline style to none in
the dataLabels.style option.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-datalabels-color/ : Red data labels
*/
@property(nonatomic, readwrite) HIColor *color;
/**
* description: The background color or gradient for the data label.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-datalabels-box/ : Data labels box options
*/
@property(nonatomic, readwrite) HIColor *backgroundColor;
/**
* description: Whether to allow data labels to overlap. To make the labels less
sensitive for overlapping, the dataLabels.padding can be set to 0.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-datalabels-allowoverlap-false/ : Don't allow overlap
* default: false
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *allowOverlap;
/**
* description: A [format string](http://www.highcharts.com/docs/chart-concepts/labels-and-string-formatting)
for the data label. Available variables are the same as for
formatter.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-datalabels-format/ : Add a unit
* default: {y}
*/
@property(nonatomic, readwrite) NSString *format;
/**
* description: The shadow of the box. Works best with borderWidth or
backgroundColor. Since 2.3 the shadow can be an object
configuration containing color, offsetX, offsetY, opacity and
width.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-datalabels-box/ : Data labels box options
* default: false
*/
@property(nonatomic, readwrite) id /* Bool, id */ shadow;
/**
* description: The Z index of the data labels. The default Z index puts it above
the series. Use a Z index of 2 to display it behind the series.
* default: 6
*/
@property(nonatomic, readwrite) NSNumber *zIndex;
/**
* description: A class name for the data label. Particularly in styled mode, this
can be used to give each series' or point's data label unique
styling. In addition to this option, a default color class name is
added so that we can give the labels a
[contrast text shadow](http://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/css/data-label-contrast/).
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/css/series-datalabels/ : Styling by CSS
*/
@property(nonatomic, readwrite) NSString *className;
/**
* description: The border width in pixels for the data label.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-datalabels-box/ : Data labels box options
* default: 0
*/
@property(nonatomic, readwrite) NSNumber *borderWidth;
/**
* description: Decides how the data label will be rotated according to the perimeter
of the sunburst. It can either be parallel or perpendicular to the
perimeter.
series.rotation takes precedence over rotationMode.
* accepted values: ["perpendicular", "parallel"]
*/
@property(nonatomic, readwrite) NSString *rotationMode;
/**
* description: The y position offset of the label relative to the point.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-datalabels-rotation/ : Vertical and positioned
* default: -6
*/
@property(nonatomic, readwrite) NSNumber *y;
/**
* description: Callback to format data labels for _nodes_ in the sankey diagram. 
The nodeFormat option takes precedence over the nodeFormatter.
*/
@property(nonatomic, readwrite) HIFunction *nodeFormatter;
/**
* description: The [format string](http://www.highcharts.com/docs/chart-concepts/labels-
and-string-formatting) specifying what to show for _nodes_ in the 
sankey diagram. By default the nodeFormatter returns
{point.name}.
*/
@property(nonatomic, readwrite) NSString *nodeFormat;
/**
* description: The color of the line connecting the data label to the pie slice.
The default color is the same as the point's color.

In styled mode, the connector stroke is given in the
.highcharts-data-label-connector class.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/pie-datalabels-connectorcolor/ : Blue connectors
https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/css/pie-point/ : Styled connectors
* default: {point.color}
*/
@property(nonatomic, readwrite) NSString *connectorColor;
/**
* description: The distance of the data label from the pie's edge. Negative numbers
put the data label on top of the pie slices. Connectors are only
shown for data labels outside the pie.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/pie-datalabels-distance/ : Data labels on top of the pie
* default: 30
*/
@property(nonatomic, readwrite) NSNumber *distance;
/**
* description: The width of the line connecting the data label to the pie slice.


In styled mode, the connector stroke width is given in the
.highcharts-data-label-connector class.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/pie-datalabels-connectorwidth-disabled/ : Disable the connector
https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/css/pie-point/ : Styled connectors
* default: 1
*/
@property(nonatomic, readwrite) NSNumber *connectorWidth;
/**
* description: Whether to render the connector as a soft arc or a line with sharp
break.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/pie-datalabels-softconnector-true/ : Soft
https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/pie-datalabels-softconnector-false/ : Non soft
*/
@property(nonatomic, readwrite) NSNumber *softConnector;
/**
* description: The distance from the data label to the connector.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/pie-datalabels-connectorpadding/ : No padding
* default: 5
*/
@property(nonatomic, readwrite) NSNumber *connectorPadding;

-(NSDictionary *)getParams;

@end
