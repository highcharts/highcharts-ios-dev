/**
* (c) 2009-2017 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HIWindbarbLabelStyle.h"


/**
* description: Series labels are placed as close to the series as possible in a
natural way, seeking to avoid other series. The goal of this
feature is to make the chart more easily readable, like if a
human designer placed the labels in the optimal position.
The series labels currently work with series types having a
graph or an area.
Requires the series-label.js module.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/series-label/line-chart : Line chart
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/demo/streamgraph : Stream graph
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/series-label/stock-chart : Stock chart
*/
@interface HIWindbarbLabel: HIChartsJSONSerializable

/**
* description: Styles for the series label. The color defaults to the series
color, or a contrast color if onArea.
*/
@property(nonatomic, readwrite) HIWindbarbLabelStyle *style;
/**
* description: Draw the label on the area of an area series. By default it
is drawn on the area. Set it to false to draw it next to
the graph instead.
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *onArea;
/**
* description: For area-like series, allow the font size to vary so that
small areas get a smaller font size. The default applies this
effect to area-like series but not line-like series.
*/
@property(nonatomic, readwrite) NSNumber *minFontSize;
/**
* description: An array of boxes to avoid when laying out the labels. Each 
item has a left, right, top and bottom property.
*/
@property(nonatomic, readwrite) NSArray *boxesToAvoid;
/**
* description: If the label is closer than this to a neighbour graph, draw a
connector.
* default: 24
*/
@property(nonatomic, readwrite) NSNumber *connectorNeighbourDistance;
/**
* description: Enable the series label per series.
* default: True
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *enabled;
/**
* description: Allow labels to be placed distant to the graph if necessary,
and draw a connector line to the graph.
* default: True
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *connectorAllowed;
/**
* description: For area-like series, allow the font size to vary so that
small areas get a smaller font size. The default applies this
effect to area-like series but not line-like series.
*/
@property(nonatomic, readwrite) NSNumber *maxFontSize;

-(NSDictionary *)getParams;

@end
