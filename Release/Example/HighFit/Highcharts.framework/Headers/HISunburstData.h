/**
* (c) 2009-2017 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HISunburstDataEvents.h"
#import "HIColor.h"


@interface HISunburstData: HIChartsJSONSerializable

/**
* description: The value of the point, resulting in a relative area of the point
in the sunburst.
* default: undefined
*/
@property(nonatomic, readwrite) NSNumber *value;
/**
* description: A description of the point to add to the screen reader information
about the point. Requires the Accessibility module.
* default: undefined
*/
@property(nonatomic, readwrite) NSString *definition;
/**
* description: Individual point events
*/
@property(nonatomic, readwrite) HISunburstDataEvents *events;
/**
* description: The id of a series in the drilldown.series
array to use for a drilldown for this point.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/drilldown/basic/ : Basic drilldown
*/
@property(nonatomic, readwrite) NSString *drilldown;
/**
* description: An id for the point. This can be used after render time to get a
pointer to the point object through chart.get().

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/point/id/ : Remove an id'd point
* default: null
*/
@property(nonatomic, readwrite) NSString *id;
/**
* description: Whether the data point is selected initially.
* default: false
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *selected;
/**
* description: Serves a purpose only if a colorAxis object is defined in the chart
options. This value will decide which color the point gets from the
scale of the colorAxis.
* default: undefined
*/
@property(nonatomic, readwrite) NSNumber *colorValue;
/**
* description: Point padding for a single point.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/maps/plotoptions/tilemap-pointpadding : Point padding on tiles
*/
@property(nonatomic, readwrite) NSNumber *pointPadding;
/**
* description: The color of the point. In heat maps the point color is rarely set
explicitly, as we use the color to denote the value. Options for
this are set in the colorAxis configuration.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/point/color/ : Mark the highest point
* default: undefined
*/
@property(nonatomic, readwrite) HIColor *color;
/**
* description: Only for treemap. Use this option to build a tree structure. The
value should be the id of the point which is the parent. If no points
has a matching id, or this option is undefined, then the parent will
be set to the root.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/point/parent/ : Point parent
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/demo/treemap-with-levels/ : Example where parent id is not matching
* default: undefined
*/
@property(nonatomic, readwrite) NSString *parent;
/**
* description: An additional, individual class name for the data point's graphic
representation.
*/
@property(nonatomic, readwrite) NSString *className;
/**
* description: Styled mode only. A specific color index to use for the point, so its
graphic representations are given the class name highcharts-color-
{n}.
*/
@property(nonatomic, readwrite) NSNumber *colorIndex;
/**
* description: The rank for this point's data label in case of collision. If two
data labels are about to overlap, only the one with the highest labelrank
will be drawn.
*/
@property(nonatomic, readwrite) NSNumber *labelrank;
/**
* description: The name decides the text for a word.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/series/data-array-of-objects/ : Point names
* default: undefined
*/
@property(nonatomic, readwrite) NSString *name;
/**
* description: Individual data label for each point. The options are the same as
the ones for plotOptions.series.dataLabels

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/point/datalabels/ : Show a label for the last value
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/point/datalabels/ : Show a label for the last value
*/
@property(nonatomic, readwrite) id dataLabels;
/**
* description: The weighting of a word. The weight decides the relative size of a word
compared to the rest of the collection.
* default: undefined
*/
@property(nonatomic, readwrite) NSNumber *weight;

-(NSDictionary *)getParams;

@end
