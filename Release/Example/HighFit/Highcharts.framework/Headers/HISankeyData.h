/**
* (c) 2009-2017 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HISankeyDataEvents.h"
#import "HIColor.h"


/**
* description: An array of data points for the series. For the sankey series type,
points can be given in the following way:
An array of objects with named values. The objects are point
configuration objects as seen below. If the total number of data
points exceeds the series' turboThreshold,
this option is not available.
    data: [{
        from: 'Category1',
        to: 'Category2',
        weight: 2
    }, {
        from: 'Category1',
        to: 'Category3',
        weight: 5
    }]


* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/chart/reflow-true/ : Numerical values
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/series/data-array-of-arrays/ : Arrays of numeric x and y
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/series/data-array-of-arrays-datetime/ : Arrays of datetime x and y
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/series/data-array-of-name-value/ : Arrays of point.name and y
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/series/data-array-of-objects/ : Config objects
*/
@interface HISankeyData: HIChartsJSONSerializable

/**
* description: Whether the data point is selected initially.
* default: false
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *selected;
/**
* description: Individual data label for each point. The options are the same as
the ones for plotOptions.series.dataLabels

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/point/datalabels/ : Show a label for the last value
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/point/datalabels/ : Show a label for the last value
*/
@property(nonatomic, readwrite) id dataLabels;
/**
* description: An id for the point. This can be used after render time to get a
pointer to the point object through chart.get().

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/point/id/ : Remove an id'd point
* default: null
*/
@property(nonatomic, readwrite) NSString *id;
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
* description: The name of the point as shown in the legend, tooltip, dataLabel
etc.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/series/data-array-of-objects/ : Point names
*/
@property(nonatomic, readwrite) NSString *name;
/**
* description: Individual color for the point. By default the color is pulled from
the global colors array.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/point/color/ : Mark the highest point
* default: undefined
*/
@property(nonatomic, readwrite) HIColor *color;
/**
* description: The node that the link runs from.
*/
@property(nonatomic, readwrite) NSString *from;
/**
* description: The node that the link runs to.
*/
@property(nonatomic, readwrite) NSString *to;
/**
* description: The weight of the link.
*/
@property(nonatomic, readwrite) NSNumber *weight;
/**
* description: A description of the point to add to the screen reader information
about the point. Requires the Accessibility module.
* default: undefined
*/
@property(nonatomic, readwrite) NSString *definition;
/**
* description: The rank for this point's data label in case of collision. If two
data labels are about to overlap, only the one with the highest labelrank
will be drawn.
*/
@property(nonatomic, readwrite) NSNumber *labelrank;
/**
* description: Whether the link goes out of the system.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/sankey-outgoing : Sankey chart with outgoing links
* default: false
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *outgoing;
/**
* description: Individual point events
*/
@property(nonatomic, readwrite) HISankeyDataEvents *events;

-(NSDictionary *)getParams;

@end