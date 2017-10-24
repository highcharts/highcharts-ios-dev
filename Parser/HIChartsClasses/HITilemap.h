/**
* (c) 2009-2017 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HISeries.h"
#import "HIColor.h"


/**
* description: A tilemap series is a type of heatmap where the tile shapes are configurable.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/demo/honeycomb-usa/ : Honeycomb tilemap, USA
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/maps/plotoptions/honeycomb-brazil/ : Honeycomb tilemap, Brazil
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/maps/plotoptions/honeycomb-china/ : Honeycomb tilemap, China
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/maps/plotoptions/honeycomb-europe/ : Honeycomb tilemap, Europe
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/maps/demo/circlemap-africa/ : Circlemap tilemap, Africa
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/maps/demo/diamondmap : Diamondmap tilemap
*/
@interface HITilemap: HISeries

/**
* description: The column size - how many X axis units each column in the tilemap
should span. Works as in Heatmaps.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/maps/demo/heatmap/ : One day
* default: 1
*/
@property(nonatomic, readwrite) NSNumber *colsize;
/**
* description: The padding between points in the tilemap.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/maps/plotoptions/tilemap-pointpadding : Point padding on tiles
* default: 2
*/
@property(nonatomic, readwrite) NSNumber *pointPadding;
/**
* description: The row size - how many Y axis units each tilemap row should span.
Analogous to colsize.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/maps/demo/heatmap/ : 1 by default
* default: 1
*/
@property(nonatomic, readwrite) NSNumber *rowsize;
/**
* description: The color applied to null points. In styled mode, a general CSS class is
applied instead.
* default: #f7f7f7
*/
@property(nonatomic, readwrite) HIColor *nullColor;
/**
* description: The shape of the tiles in the tilemap. Possible values are hexagon,
circle, diamond, and square.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/maps/demo/circlemap-africa : Circular tile shapes
https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/maps/demo/diamondmap : Diamond tile shapes
* default: hexagon
*/
@property(nonatomic, readwrite) NSString *tileShape;

-(NSDictionary *)getParams;

@end
