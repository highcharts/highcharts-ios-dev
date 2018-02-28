/**
* (c) 2009-2018 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HIItems.h"
#import "HIStyle.h"
#import "HIPoint.h"
#import "HIColor.h"
#import "HIFunction.h"


/**
* description: HTML labels that can be positioned anywhere in the chart area.
*/
@interface HILabels: HIChartsJSONSerializable

/**
* description: A HTML label that can be positioned anywhere in the chart area.
*/
@property(nonatomic, readwrite) NSArray <HIItems *> *items;
/**
* description: Shared CSS styles for all labels.
* default: { "color": "#333333" }
*/
@property(nonatomic, readwrite) HIStyle *style;
/**
* description: The y position offset of the label relative to the tick position
on the axis.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/xaxis/labels-x/ : Y axis labels placed on grid lines
* default: 3
*/
@property(nonatomic, readwrite) NSNumber *y;
/**
* description: The x position offset of the label relative to the tick position
on the axis. Defaults to -15 for left axis, 15 for right axis.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/xaxis/labels-x/ : Y axis labels placed on grid lines
*/
@property(nonatomic, readwrite) NSNumber *x;
/**
* description: What part of the string the given position is anchored to. Can
be one of "left", "center" or "right". The exact position
also depends on the labels.x setting.

Angular gauges and solid gauges defaults to center.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/yaxis/labels-align-left/ : Left
* accepted values: ["left", "center", "right"]
* default: right
*/
@property(nonatomic, readwrite) NSString *align;
/**
* description: Angular gauges and solid gauges only. The label's pixel distance
from the perimeter of the plot area.
* default: -25
*/
@property(nonatomic, readwrite) NSNumber *distance;
/**
* description: The Z index for the axis labels.
* default: 7
*/
@property(nonatomic, readwrite) NSNumber *zIndex;
/**
* description: Whether to reserve space for the labels. By default, space is
reserved for the labels in these cases:

* On all horizontal axes.
* On vertical axes if label.align is right on a left-side
axis or left on a right-side axis.
* On vertical axes if label.align is center.

This can be turned off when for example the labels are rendered
inside the plot area instead of outside.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/xaxis/labels-reservespace/ : No reserved space, labels inside plot
https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/xaxis/labels-reservespace-true/ : Left-aligned labels on a vertical category axis
* default: null
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *reserveSpace;
/**
* description: A [format string](http://www.highcharts.com/docs/chart-
concepts/labels-and-string-formatting) for the axis label.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/yaxis/labels-format/ : Add units to Y axis label
* default: {value}
*/
@property(nonatomic, readwrite) NSString *format;
/**
* description: When each category width is more than this many pixels, we don't
apply auto rotation. Instead, we lay out the axis label with word
wrap. A lower limit makes sense when the label contains multiple
short words that don't extend the available horizontal space for
each label.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/xaxis/labels-autorotationlimit/ : Lower limit
* default: 80
*/
@property(nonatomic, readwrite) NSNumber *autoRotationLimit;
/**
* description: Enable or disable the axis labels.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/xaxis/labels-enabled/ : X axis labels disabled
* default: true
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *enabled;
/**
* description: Horizontal axes only. The number of lines to spread the labels
over to make room or tighter labels.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/xaxis/labels-staggerlines/ : Show labels over two lines
* default: null
*/
@property(nonatomic, readwrite) NSNumber *staggerLines;
/**
* description: Defines how the labels are be repositioned according to the 3D chart
orientation.
- 'offset': Maintain a fixed horizontal/vertical distance from the
	 tick marks, despite the chart orientation. This is the backwards
	 compatible behavior, and causes skewing of X and Z axes.
- 'chart': Preserve 3D position relative to the chart.
  This looks nice, but hard to read if the text isn't
  forward-facing.
- 'flap': Rotated text along the axis to compensate for the chart
	 orientation. This tries to maintain text as legible as possible on
	 all orientations.
- 'ortho': Rotated text along the axis direction so that the labels
	 are orthogonal to the axis. This is very similar to 'flap', but
	 prevents skewing the labels (X and Y scaling are still present).
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/3d/skewed-labels/ : Skewed labels
* accepted values: ['offset', 'chart', 'flap', 'ortho']
*/
@property(nonatomic, readwrite) NSString *position3d;
/**
* description: Whether to [use HTML](http://www.highcharts.com/docs/chart-
concepts/labels-and-string-formatting#html) to render the labels.
* default: false
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *useHTML;
/**
* description: The pixel padding for axis labels, to ensure white space between
them.
* default: 5
*/
@property(nonatomic, readwrite) NSNumber *padding;
/**
* description: To show only every _n_'th label on the axis, set the step to _n_.
Setting the step to 2 shows every other label.

By default, the step is calculated automatically to avoid
overlap. To prevent this, set it to 1\. This usually only
happens on a category axis, and is often a sign that you have
chosen the wrong axis type.

Read more at
[Axis docs](http://www.highcharts.com/docs/chart-concepts/axes)
=> What axis should I use?
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/xaxis/labels-step/ : Showing only every other axis label on a categorized x axis
https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/xaxis/labels-step-auto/ : Auto steps on a category axis
* default: null
*/
@property(nonatomic, readwrite) NSNumber *step;
/**
* description: If enabled, the axis labels will skewed to follow the perspective. 

This will fix overlapping labels and titles, but texts become less
legible due to the distortion.

The final appearance depends heavily on labels.position3d.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/3d/skewed-labels/ : Skewed labels
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *skew3d;
/**
* description: Callback JavaScript function to format the label. The value
is given by this.value. Additional properties for this are
axis, chart, isFirst and isLast. The value of the default
label formatter can be retrieved by calling
this.axis.defaultLabelFormatter.call(this) within the function.

Defaults to:

function() {
    return this.value;
}
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/xaxis/labels-formatter-linked/ : Linked category names
https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/xaxis/labels-formatter-extended/ : Modified numeric labels
*/
@property(nonatomic, readwrite) HIFunction *formatter;
/**
* description: Rotation of the labels in degrees.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/xaxis/labels-rotation/ : X axis labels rotated 90Â°
* default: 0
*/
@property(nonatomic, readwrite) NSNumber *rotation;
/**
* description: For horizontal axes, the allowed degrees of label rotation
to prevent overlapping labels. If there is enough space,
labels are not rotated. As the chart gets narrower, it
will start rotating the labels -45 degrees, then remove
every second label and try again with rotations 0 and -45 etc.
Set it to false to disable rotation, which will
cause the labels to word-wrap if possible.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/xaxis/labels-autorotation-default/ : Default auto rotation of 0 or -45
https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/xaxis/labels-autorotation-0-90/ : Custom graded auto rotation
* default: [-45]
*/
@property(nonatomic, readwrite) NSArray<NSNumber *> *autoRotation;
/**
* description: This option defines the point to which the label will be connected.
It can be either the point which exists in the series - it is
referenced by the point's id - or a new point with defined x, y
properies and optionally axes.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/annotations/mock-point/ : Attach annotation to a mock point
*/
@property(nonatomic, readwrite) HIPoint *point;
/**
* description: Whether to allow the annotation's labels to overlap.
To make the labels less sensitive for overlapping, 
the can be set to 0.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/annotations/tooltip-like/ : Hide overlapping labels
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *allowOverlap;
/**
* description: The border color for the annotation's label.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/annotations/label-presentation/ : Set labels graphic options
*/
@property(nonatomic, readwrite) HIColor *borderColor;
/**
* description: The vertical alignment of the annotation's label.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/annotations/label-position/ : Set labels position
*
* accepted values: ["top", "middle", "bottom"]
*/
@property(nonatomic, readwrite) NSString *verticalAlign;
/**
* description: The border radius in pixels for the annotaiton's label.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/annotations/label-presentation/ : Set labels graphic options
*/
@property(nonatomic, readwrite) NSNumber *borderRadius;
/**
* description: Alias for the format option.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/annotations/label-text/ : Set labels text
* default: undefined
*/
@property(nonatomic, readwrite) NSString *text;
/**
* description: Whether to hide the annotation's label that is outside the plot
area.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/annotations/label-crop-overflow/ : Crop or justify labels
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *crop;
/**
* description: A class name for styling by CSS.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/css/annotations : Styled mode annotations
*/
@property(nonatomic, readwrite) NSString *className;
/**
* description: The name of a symbol to use for the border around the label.
Symbols are predefined functions on the Renderer object.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/annotations/shapes/ : Available shapes for labels
*
*/
@property(nonatomic, readwrite) NSString *shape;
/**
* description: The border width in pixels for the annotation's label
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/annotations/label-presentation/ : Set labels graphic options
*/
@property(nonatomic, readwrite) NSNumber *borderWidth;
/**
* description: The background color or gradient for the annotation's label.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/annotations/label-presentation/ : Set labels graphic options
*/
@property(nonatomic, readwrite) HIColor *backgroundColor;
/**
* description: How to handle the annotation's label that flow outside the plot
area. The justify option aligns the label inside the plot area.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/annotations/label-crop-overflow/ : Crop or justify labels
*
* accepted values: ["none", "justify"]
*/
@property(nonatomic, readwrite) NSString *overflow;
/**
* description: The shadow of the box. The shadow can be an object configuration
containing color, offsetX, offsetY, opacity and width.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/annotations/label-presentation/ : Set labels graphic options
*/
@property(nonatomic, readwrite) id /* Bool, id */ shadow;

-(NSDictionary *)getParams;

@end
