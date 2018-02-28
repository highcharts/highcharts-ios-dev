/**
* (c) 2009-2018 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HIStyle.h"


/**
* description: The chart's main title.
*/
@interface HITitle: HIChartsJSONSerializable

/**
* description: CSS styles for the title. Use this for font styling, but use align,
x and y for text alignment.

In styled mode, the title style is given in the .highcharts-title class.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/title/style/ : Custom color and weight
https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/css/titles/ : Styled mode
* default: { "color": "#333333", "fontSize": "18px" }
*/
@property(nonatomic, readwrite) HIStyle *style;
/**
* description: The vertical alignment of the title. Can be one of "top", "middle"
and "bottom". When a value is given, the title behaves as if [floating](#title.
floating) were true.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/title/verticalalign/ : Chart title in bottom right corner
* accepted values: ["top", "middle", "bottom"]
*/
@property(nonatomic, readwrite) NSString *verticalAlign;
/**
* description: The title of the chart. To disable the title, set the text to
null.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/title/text/ : Custom title
* default: Chart title
*/
@property(nonatomic, readwrite) NSString *text;
/**
* description: The horizontal alignment of the title. Can be one of "left", "center"
and "right".
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/title/align/ : Aligned to the plot area (x = 70px = margin left - spacing left)
* accepted values: ["left", "center", "right"]
* default: center
*/
@property(nonatomic, readwrite) NSString *align;
/**
* description: Whether to [use HTML](http://www.highcharts.com/docs/chart-concepts/labels-
and-string-formatting#html) to render the text.
* default: false
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *useHTML;
/**
* description: The y position of the title relative to the alignment within [chart.
spacingTop](#chart.spacingTop) and chart.spacingBottom.
 By default it depends on the font size.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/title/y/ : Title inside the plot area
*/
@property(nonatomic, readwrite) NSNumber *y;
/**
* description: The x position of the title relative to the alignment within chart.
spacingLeft and chart.spacingRight.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/title/align/ : Aligned to the plot area (x = 70px = margin left - spacing left)
* default: 0
*/
@property(nonatomic, readwrite) NSNumber *x;
/**
* description: Adjustment made to the title width, normally to reserve space for
the exporting burger menu.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/title/widthadjust/ : Wider menu, greater padding
* default: -44
*/
@property(nonatomic, readwrite) NSNumber *widthAdjust;
/**
* description: The margin between the title and the plot area, or if a subtitle
is present, the margin between the subtitle and the plot area.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/title/margin-50/ : A chart title margin of 50
https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/title/margin-subtitle/ : The same margin applied with a subtitle
* default: 15
*/
@property(nonatomic, readwrite) NSNumber *margin;
/**
* description: When the title is floating, the plot area will not move to make space
for it.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/chart/zoomtype-none/ : False by default
https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/title/floating/ : True - title on top of the plot area
* default: false
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *floating;
/**
* description: The rotation of the text in degrees. 0 is horizontal, 270 is
vertical reading from bottom to top.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/yaxis/title-offset/ : Horizontal
* default: 0
*/
@property(nonatomic, readwrite) NSNumber *rotation;
/**
* description: Whether to reserve space for the title when laying out the axis.
* default: true
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *reserveSpace;
/**
* description: If enabled, the axis title will skewed to follow the perspective.

This will fix overlapping labels and titles, but texts become less
legible due to the distortion.

The final appearance depends heavily on title.position3d.

A null value will use the config from labels.skew3d.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/3d/skewed-labels/ : Skewed labels
* accepted values: [false, true, null]
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *skew3d;
/**
* description: Defines how the title is repositioned according to the 3D chart
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
- null: Will use the config from labels.position3d
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/3d/skewed-labels/ : Skewed labels
* accepted values: ['offset', 'chart', 'flap', 'ortho', null]
*/
@property(nonatomic, readwrite) NSString *position3d;
/**
* description: The distance of the axis title from the axis line. By default, this
distance is computed from the offset width of the labels, the labels'
distance from the axis and the title's margin. However when the offset
option is set, it overrides all this.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/yaxis/title-offset/ : Place the axis title on top of the axis
*/
@property(nonatomic, readwrite) NSNumber *offset;

-(NSDictionary *)getParams;

@end
