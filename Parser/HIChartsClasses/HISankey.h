/**
* (c) 2009-2017 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HISeries.h"


/**
* description: A sankey diagram is a type of flow diagram, in which the width of the 
link between two nodes is shown proportionally to the flow quantity.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/demo/sankey-diagram/ : Sankey diagram
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/sankey-inverted/ : Inverted sankey diagram
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/sankey-outgoing : Sankey diagram with outgoing links
*/
@interface HISankey: HISeries

/**
* description: Higher numbers makes the links in a sankey diagram render more curved.
A curveFactor of 0 makes the lines straight.
* default: 0.33
*/
@property(nonatomic, readwrite) NSNumber *curveFactor;
/**
* description: A series specific or series type specific color set to apply instead
of the global colors when colorByPoint is true.
*/
@property(nonatomic, readwrite) NSArray<HIColor *> *colors;
/**
* description: Opacity for the links between nodes in the sankey diagram.
* default: 0.5
*/
@property(nonatomic, readwrite) NSNumber *linkOpacity;
/**
* description: The pixel width of each node in a sankey diagram, or the height in case
the chart is inverted.
* default: 20
*/
@property(nonatomic, readwrite) NSNumber *nodeWidth;
/**
* description: When using automatic point colors pulled from the options.colors
collection, this option determines whether the chart should receive
one color per series or one color per point.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/column-colorbypoint-false/ : False by default
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/column-colorbypoint-true/ : True
* default: True
*/
@property(nonatomic, readwrite) NSNumber /* Bool */ *colorByPoint;
/**
* description: The padding between nodes in a sankey diagram, in pixels.
* default: 10
*/
@property(nonatomic, readwrite) NSNumber *nodePadding;
/**
* description: The minimal height for a column or width for a bar. By default,
0 values are not shown. To visualize a 0 (or close to zero) point,
set the minimal point length to a pixel value like 3. In stacked
column charts, minPointLength might not be respected for tightly
packed values.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/column-minpointlength/ : Zero base value
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/column-minpointlength-pos-and-neg/ : Positive and negative close to zero values
* default: 0
*/
@property(nonatomic, readwrite) NSNumber *minPointLength;

-(NSDictionary *)getParams;

@end
