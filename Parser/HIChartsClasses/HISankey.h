/**
* (c) 2009-2018 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HISeries.h"
#import "HINodes.h"


/**
* description: A sankey series. If the type option is not
specified, it is inherited from chart.type.

For options that apply to multiple series, it is recommended to add
them to the plotOptions.series options structure.
To apply to all series of this specific type, apply it to plotOptions.
sankey.
*/
@interface HISankey: HISeries

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
* description: Higher numbers makes the links in a sankey diagram render more curved.
A curveFactor of 0 makes the lines straight.
*/
@property(nonatomic, readwrite) NSNumber *curveFactor;
/**
* description: The padding between nodes in a sankey diagram, in pixels.
*/
@property(nonatomic, readwrite) NSNumber *nodePadding;
/**
* description: The pixel width of each node in a sankey diagram, or the height in case
the chart is inverted.
*/
@property(nonatomic, readwrite) NSNumber *nodeWidth;
/**
* description: Opacity for the links between nodes in the sankey diagram.
*/
@property(nonatomic, readwrite) NSNumber *linkOpacity;
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
* description: A collection of options for the individual nodes. The nodes in a sankey 
diagram are auto-generated instances of Highcharts.Point, but options can
be applied here and linked by the id.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/css/sankey/ : Sankey diagram with node options
*/
@property(nonatomic, readwrite) NSArray <HINodes *> *nodes;

-(NSDictionary *)getParams;

@end
