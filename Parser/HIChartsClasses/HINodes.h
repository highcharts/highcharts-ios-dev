/**
* (c) 2009-2018 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HIChartsJSONSerializable.h"
#import "HIColor.h"


/**
* description: A collection of options for the individual nodes. The nodes in a sankey 
diagram are auto-generated instances of Highcharts.Point, but options can
be applied here and linked by the id.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/css/sankey/ : Sankey diagram with node options
*/
@interface HINodes: HIChartsJSONSerializable

/**
* description: The name to display for the node in data labels and tooltips. Use this when
the name is different from the id. Where the id must be unique for each
node, this is not necessary for the name.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/css/sankey/ : Sankey diagram with node options
*/
@property(nonatomic, readwrite) NSString *name;
/**
* description: The color of the auto generated node.
*/
@property(nonatomic, readwrite) HIColor *color;
/**
* description: An optional column index of where to place the node. The default behaviour is
to place it next to the preceding node.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/sankey-node-column/ : Specified node column
* default: undefined
*/
@property(nonatomic, readwrite) NSNumber *column;
/**
* description: The vertical offset of a node in terms of weight. Positive values shift the
node downwards, negative shift it upwards.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/sankey-node-column/ : Specified node offset
* default: 0
*/
@property(nonatomic, readwrite) NSNumber *offset;
/**
* description: The id of the auto-generated node, refering to the from or to setting of
the link.
*/
@property(nonatomic, readwrite) NSString *id;
/**
* description: The color index of the auto generated node, especially for use in styled
mode.
*/
@property(nonatomic, readwrite) NSNumber *colorIndex;

-(NSDictionary *)getParams;

@end
