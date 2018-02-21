/**
* (c) 2009-2018 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HISeries.h"
#import "HIColor.h"


/**
* description: A boxplot series. If the type option is
not specified, it is inherited from chart.type.

For options that apply to multiple series, it is recommended to add
them to the plotOptions.series options structure.
To apply to all series of this specific type, apply it to
plotOptions.boxplot.
*/
@interface HIBoxplot: HISeries

/**
* description: The color of the median line. If null, the general series color
applies.

In styled mode, the median stroke width can be set with the
.highcharts-boxplot-median class.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/box-plot-styling/ : Box plot styling
https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/css/boxplot/ : Box plot in styled mode
https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/error-bar-styling/ : Error bar styling
* default: null
*/
@property(nonatomic, readwrite) HIColor *medianColor;
/**
* description: The pixel width of the median line. If null, the
lineWidth is used.

In styled mode, the median stroke width can be set with the
.highcharts-boxplot-median class.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/box-plot-styling/ : Box plot styling
https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/css/boxplot/ : Box plot in styled mode
*/
@property(nonatomic, readwrite) NSNumber *medianWidth;
/**
* description: The color of the whiskers, the horizontal lines marking low and high
values. When null, the general series color is used.

In styled mode, the whisker stroke can be set with the
.highcharts-boxplot-whisker class .
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/box-plot-styling/ : Box plot styling
https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/css/boxplot/ : Box plot in styled mode
* default: null
*/
@property(nonatomic, readwrite) HIColor *whiskerColor;
/**
* description: The color of the stem, the vertical line extending from the box to
the whiskers. If null, the series color is used.

In styled mode, the stem stroke can be set with the
.highcharts-boxplot-stem class.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/box-plot-styling/ : Box plot styling
https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/css/boxplot/ : Box plot in styled mode
https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/error-bar-styling/ : Error bar styling
* default: null
*/
@property(nonatomic, readwrite) HIColor *stemColor;
/**
* description: The length of the whiskers, the horizontal lines marking low and
high values. It can be a numerical pixel value, or a percentage
value of the box width. Set 0 to disable whiskers.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/box-plot-styling/ : True by default
*/
@property(nonatomic, readwrite) id /* NSNumber, NSString */ whiskerLength;
/**
* description: The dash style of the stem, the vertical line extending from the
box to the whiskers.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/box-plot-styling/ : Box plot styling
https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/css/boxplot/ : Box plot in styled mode
https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/error-bar-styling/ : Error bar styling
* accepted values: ["Solid", "ShortDash", "ShortDot", "ShortDashDot",             "ShortDashDotDot", "Dot", "Dash" ,"LongDash", "DashDot",             "LongDashDot", "LongDashDotDot"]
* default: Solid
*/
@property(nonatomic, readwrite) NSString *stemDashStyle;
/**
* description: The fill color of the box.

In styled mode, the fill color can be set with the
.highcharts-boxplot-box class.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/box-plot-styling/ : Box plot styling
* default: #ffffff
*/
@property(nonatomic, readwrite) HIColor *fillColor;
/**
* description: The width of the stem, the vertical line extending from the box to
the whiskers. If null, the width is inherited from the
lineWidth option.

In styled mode, the stem stroke width can be set with the
.highcharts-boxplot-stem class.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/box-plot-styling/ : Box plot styling
https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/css/boxplot/ : Box plot in styled mode
https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/error-bar-styling/ : Error bar styling
* default: null
*/
@property(nonatomic, readwrite) NSNumber *stemWidth;
/**
* description: The line width of the whiskers, the horizontal lines marking low and
high values. When null, the general
lineWidth applies.

In styled mode, the whisker stroke width can be set with the
.highcharts-boxplot-whisker class.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/box-plot-styling/ : Box plot styling
https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/css/boxplot/ : Box plot in styled mode
*/
@property(nonatomic, readwrite) NSNumber *whiskerWidth;
/**
* description: The X axis range that each point is valid for. This determines the
width of the column. On a categorized axis, the range will be 1
by default (one category unit). On linear and datetime axes, the
range will be computed as the distance between the two closest data
points.

The default null means it is computed automatically, but this option
can be used to override the automatic value.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/column-pointrange/ : Set the point range to one day on a data set with one week between the points
*/
@property(nonatomic, readwrite) id pointRange;
/**
* description: The minimal height for a column or width for a bar. By default,
0 values are not shown. To visualize a 0 (or close to zero) point,
set the minimal point length to a pixel value like 3\. In stacked
column charts, minPointLength might not be respected for tightly
packed values.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/column-minpointlength/ : Zero base value
https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/column-minpointlength-pos-and-neg/ : Positive and negative close to zero values
*/
@property(nonatomic, readwrite) NSNumber *minPointLength;
/**
* description: A series specific or series type specific color set to apply instead
of the global colors when colorByPoint is true.
*/
@property(nonatomic, readwrite) NSArray<HIColor *> *colors;
/**
* description: 3D columns only. The color of the edges. Similar to borderColor,
 except it defaults to the same color as the column.
*/
@property(nonatomic, readwrite) HIColor *edgeColor;
/**
* description: When using automatic point colors pulled from the options.colors
collection, this option determines whether the chart should receive
one color per series or one color per point.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/column-colorbypoint-false/ : False by default
https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/column-colorbypoint-true/ : True
* default: false
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *colorByPoint;
/**
* description: The maximum allowed pixel width for a column, translated to the height
of a bar in a bar chart. This prevents the columns from becoming
too wide when there is a small number of points in the chart.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/column-maxpointwidth-20/ : Limited to 50
* default: null
*/
@property(nonatomic, readwrite) NSNumber *maxPointWidth;
/**
* description: A pixel value specifying a fixed width for each column or bar. When
null, the width is calculated from the pointPadding and
groupPadding.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/column-pointwidth-20/ : 20px wide columns regardless of chart width or the amount of data points
* default: null
*/
@property(nonatomic, readwrite) NSNumber *pointWidth;
/**
* description: Padding between each column or bar, in x axis units.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/column-pointpadding-default/ : 0.1 by default
https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/column-pointpadding-025/ : 0.25
https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/column-pointpadding-none/ : 0 for tightly packed columns
*/
@property(nonatomic, readwrite) NSNumber *pointPadding;
/**
* description: Padding between each value groups, in x axis units.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/column-grouppadding-default/ : 0.2 by default
https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/column-grouppadding-none/ : No group padding - all columns are evenly spaced
*/
@property(nonatomic, readwrite) NSNumber *groupPadding;
/**
* description: 3D columns only. The width of the colored edges.
* default: 1
*/
@property(nonatomic, readwrite) NSNumber *edgeWidth;
/**
* description: When true, each column edge is rounded to its nearest pixel in order
to render sharp on screen. In some cases, when there are a lot of
densely packed columns, this leads to visible difference in column
widths or distance between columns. In these cases, setting crisp
to false may look better, even though each column is rendered
blurry.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/column-crisp-false/ : Crisp is false
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *crisp;
/**
* description: Depth of the columns in a 3D column chart. Requires highcharts-3d.js.
* default: 25
*/
@property(nonatomic, readwrite) NSNumber *depth;
/**
* description: Whether to group non-stacked columns or to let them render independent
of each other. Non-grouped columns will be laid out individually
and overlap each other.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/column-grouping-false/ : Grouping disabled
* default: true
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *grouping;

-(NSDictionary *)getParams;

@end
