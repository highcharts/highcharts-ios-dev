/**
* (c) 2009-2017 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HIYAxisLabelsStyle.h"


/**
* description: The axis labels show the number or category for each tick.
*/
@interface HIYAxisLabels: HIChartsJSONSerializable

/**
* description: What part of the string the given position is anchored to. Can be
one of "left", "center" or "right". The exact position also
depends on the labels.x setting. Angular gauges and solid gauges
defaults to center.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/yaxis/labels-align-left/ : "left"
* accepted values: ["left", "center", "right"]
*/
@property(nonatomic, readwrite) NSString *align;
/**
* description: Enable or disable the axis labels.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/xaxis/labels-enabled/ : X axis labels disabled
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/stock/xaxis/labels-enabled/ : X axis labels disabled
* default: True
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *enabled;
/**
* description: For horizontal axes, the allowed degrees of label rotation to prevent
overlapping labels. If there is enough space, labels are not rotated.
As the chart gets narrower, it will start rotating the labels -45
degrees, then remove every second label and try again with rotations
0 and -45 etc. Set it to false to disable rotation, which will
cause the labels to word-wrap if possible.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/xaxis/labels-autorotation-default/ : Default auto rotation of 0 or -45
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/xaxis/labels-autorotation-0-90/ : Custom graded auto rotation
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/xaxis/labels-autorotation-default/ : Default auto rotation of 0 or -45
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/xaxis/labels-autorotation-0-90/ : Custom graded auto rotation
* default: [-45]
*/
@property(nonatomic, readwrite) NSArray<NSNumber *> *autoRotation;
/**
* description: Whether to reserve space for the labels. This can be turned off when
for example the labels are rendered inside the plot area instead
of outside.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/xaxis/labels-reservespace/ : No reserved space, labels inside plot
* default: true
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *reserveSpace;
/**
* description: Rotation of the labels in degrees.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/xaxis/labels-rotation/ : X axis labels rotated 90°
* default: 0
*/
@property(nonatomic, readwrite) NSNumber *rotation;
/**
* description: The Z index for the axis labels.
* default: 7
*/
@property(nonatomic, readwrite) NSNumber *zIndex;
/**
* description: A http://www.highcharts.com/docs/chart-concepts/labels-
and-string-formatting : format string for the axis label.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/yaxis/labels-format/ : Add units to Y axis label
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/yaxis/labels-format/ : Add units to Y axis label
* default: {value}
*/
@property(nonatomic, readwrite) NSString *format;
/**
* description: How to handle overflowing labels on horizontal axis. Can be undefined,
false or "justify". By default it aligns inside the chart area.
If "justify", labels will not render outside the plot area. If false,
it will not be aligned at all. If there is room to move it, it will
be aligned to the edge, else it will be removed.

* accepted values: [null, "justify"]
*/
@property(nonatomic, readwrite) NSString *overflow;
/**
* description: Horizontal axes only. The number of lines to spread the labels over
to make room or tighter labels. .

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/xaxis/labels-staggerlines/ : Show labels over two lines
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/stock/xaxis/labels-staggerlines/ : Show labels over two lines
* default: null
*/
@property(nonatomic, readwrite) NSNumber *staggerLines;
/**
* description: When each category width is more than this many pixels, we don't
apply auto rotation. Instead, we lay out the axis label with word
wrap. A lower limit makes sense when the label contains multiple
short words that don't extend the available horizontal space for
each label.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/xaxis/labels-autorotationlimit/ : Lower limit
* default: 80
*/
@property(nonatomic, readwrite) NSNumber *autoRotationLimit;
/**
* description: The y position offset of the label relative to the tick position
on the axis.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/xaxis/labels-x/ : Y axis labels placed on grid lines
* default: null
*/
@property(nonatomic, readwrite) NSNumber *y;
/**
* description: The x position offset of the label relative to the tick position
on the axis. Defaults to -15 for left axis, 15 for right axis.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/xaxis/labels-x/ : Y axis labels placed on grid lines
* default: 0
*/
@property(nonatomic, readwrite) NSNumber *x;
/**
* description: Whether to http://www.highcharts.com/docs/chart-concepts/labels-
and-string-formatting#html : use HTML to render the labels.
* default: false
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *useHTML;
/**
* description: Angular gauges and solid gauges only. The label's pixel distance
from the perimeter of the plot area.
* default: -25
*/
@property(nonatomic, readwrite) NSNumber *distance;
/**
* description: CSS styles for the label. Use whiteSpace: 'nowrap' to prevent
wrapping of category labels. Use textOverflow: 'none' to
prevent ellipsis (dots).
In styled mode, the labels are styled with the
.highcharts-axis-labels class.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/xaxis/labels-style/ : Red X axis labels
*/
@property(nonatomic, readwrite) HIYAxisLabelsStyle *style;
/**
* description: Callback JavaScript function to format the label. The value is given
by this.value. Additional properties for this are axis, chart,
isFirst and isLast. The value of the default label formatter
can be retrieved by calling this.axis.defaultLabelFormatter.call(this)
within the function.
Defaults to:
function() {
    return this.value;
}
* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/xaxis/labels-formatter-linked/ : Linked category names
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/xaxis/labels-formatter-extended/ : Modified numeric labels
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/stock/xaxis/labels-formatter/ : Added units on Y axis
*/
@property(nonatomic, readwrite) NSString /* Function */ *formatter;
/**
* description: The pixel padding for axis labels, to ensure white space between
them.
* default: 5
*/
@property(nonatomic, readwrite) NSNumber *padding;
/**
* description: If enabled, the axis labels will skewed to follow the perspective. 
This will fix overlapping labels and titles, but texts become less
legible due to the distortion.
The final appearance depends heavily on labels.position3d.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/3d/skewed-labels/ : Skewed labels
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *skew3d;
/**
* description: To show only every n'th label on the axis, set the step to n.
Setting the step to 2 shows every other label.
By default, the step is calculated automatically to avoid overlap.
To prevent this, set it to 1. This usually only happens on a category
axis, and is often a sign that you have chosen the wrong axis type.
Read more at http://www.highcharts.com/docs/chart-concepts/axes : Axis docs
=> What axis should I use?

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/xaxis/labels-step/ : Showing only every other axis label on a categorized x axis
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/xaxis/labels-step-auto/ : Auto steps on a category axis
* default: null
*/
@property(nonatomic, readwrite) NSNumber *step;
/**
* description: Defines how the labels are be repositioned according to the 3D chart
orientation.

'offset': Maintain a fixed horizontal/vertical distance from the
   tick marks, despite the chart orientation. This is the backwards
   compatible behavior, and causes skewing of X and Z axes.
'chart': Preserve 3D position relative to the chart.
This looks nice, but hard to read if the text isn't
forward-facing.
'flap': Rotated text along the axis to compensate for the chart
   orientation. This tries to maintain text as legible as possible on
   all orientations.
'ortho': Rotated text along the axis direction so that the labels
   are orthogonal to the axis. This is very similar to 'flap', but
   prevents skewing the labels (X and Y scaling are still present).


* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/3d/skewed-labels/ : Skewed labels
* accepted values: ['offset', 'chart', 'flap', 'ortho']
* default: offset
*/
@property(nonatomic, readwrite) NSString *position3d;

-(NSDictionary *)getParams;

@end
