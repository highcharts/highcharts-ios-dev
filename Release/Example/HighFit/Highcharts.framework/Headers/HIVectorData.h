/**
* (c) 2009-2017 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HIVectorDataEvents.h"
#import "HIVectorDataMarker.h"
#import "HIColor.h"


/**
* description: An array of data points for the series. For the vector series type,
points can be given in the following ways:

An array of arrays with 4 values. In this case, the values correspond
to x,y,length,direction. If the first value is a string, it is applied as
the name of the point, and the x value is inferred.
data: [
    [0, 0, 10, 90],
    [0, 1, 5, 180],
    [1, 1, 2, 270]
]


An array of objects with named values. The objects are point
configuration objects as seen below. If the total number of data
points exceeds the series' turboThreshold,
this option is not available.
data: [{
    x: 0,
    y: 0,
    name: "Point2",
    length: 10,
    direction: 90
}, {
    x: 1,
    y: 1,
    name: "Point1",
    direction: 270
}]




* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/chart/reflow-true/ : Numerical values
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/series/data-array-of-arrays/ : Arrays of numeric x and y
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/series/data-array-of-arrays-datetime/ : Arrays of datetime x and y
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/series/data-array-of-name-value/ : Arrays of point.name and y
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/series/data-array-of-objects/ : Config objects
*/
@interface HIVectorData: HIChartsJSONSerializable

/**
* description: The length of the vector. The rendered length will relate to the
vectorLength setting.
*/
@property(nonatomic, readwrite) NSNumber *length;
/**
* description: The name of the point as shown in the legend, tooltip, dataLabel
etc.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/series/data-array-of-objects/ : Point names
*/
@property(nonatomic, readwrite) NSString *name;
/**
* description: The y value of the point.
* default: null
*/
@property(nonatomic, readwrite) NSNumber *y;
/**
* description: The x value of the point. For datetime axes, the X value is the timestamp
in milliseconds since 1970.
*/
@property(nonatomic, readwrite) NSNumber *x;
/**
* description: Individual point events
*/
@property(nonatomic, readwrite) HIVectorDataEvents *events;
/**
* description: Individual data label for each point. The options are the same as
the ones for plotOptions.series.dataLabels

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/point/datalabels/ : Show a label for the last value
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/point/datalabels/ : Show a label for the last value
*/
@property(nonatomic, readwrite) id dataLabels;
/**
* description: An additional, individual class name for the data point's graphic
representation.
*/
@property(nonatomic, readwrite) NSString *className;
/**
* description: A description of the point to add to the screen reader information
about the point. Requires the Accessibility module.
* default: undefined
*/
@property(nonatomic, readwrite) NSString *definition;
/**
* description: Whether the data point is selected initially.
* default: false
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *selected;
/**
* description: The vector direction in degrees, where 0 is north (pointing towards south).
*/
@property(nonatomic, readwrite) NSNumber *direction;
/**
* description: An id for the point. This can be used after render time to get a
pointer to the point object through chart.get().

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/point/id/ : Remove an id'd point
* default: null
*/
@property(nonatomic, readwrite) NSString *id;
/**
* description: Styled mode only. A specific color index to use for the point, so its
graphic representations are given the class name highcharts-color-
{n}.
*/
@property(nonatomic, readwrite) NSNumber *colorIndex;
/**
* description: The id of a series in the drilldown.series
array to use for a drilldown for this point.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/drilldown/basic/ : Basic drilldown
*/
@property(nonatomic, readwrite) NSString *drilldown;
/**
* description: The rank for this point's data label in case of collision. If two
data labels are about to overlap, only the one with the highest labelrank
will be drawn.
*/
@property(nonatomic, readwrite) NSNumber *labelrank;
@property(nonatomic, readwrite) HIVectorDataMarker *marker;
/**
* description: Individual color for the point. By default the color is pulled from
the global colors array.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/point/color/ : Mark the highest point
* default: undefined
*/
@property(nonatomic, readwrite) HIColor *color;

-(NSDictionary *)getParams;

@end
