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
* description: A tilemap series. If the type option is
not specified, it is inherited from chart.type.

For options that apply to multiple series, it is recommended to add
them to the plotOptions.series options structure.
To apply to all series of this specific type, apply it to [plotOptions.
tilemap](#plotOptions.tilemap).
*/
@interface HITilemap: HISeries

/**
* description: The padding between points in the tilemap.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/maps/plotoptions/tilemap-pointpadding : Point padding on tiles
* default: 0
*/
@property(nonatomic, readwrite) NSNumber *pointPadding;
/**
* description: The column size - how many X axis units each column in the tilemap
should span. Works as in Heatmaps.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/maps/demo/heatmap/ : One day
* default: 1
*/
@property(nonatomic, readwrite) NSNumber *colsize;
/**
* description: The row size - how many Y axis units each tilemap row should span.
Analogous to colsize.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/maps/demo/heatmap/ : 1 by default
* default: 1
*/
@property(nonatomic, readwrite) NSNumber *rowsize;
/**
* description: The shape of the tiles in the tilemap. Possible values are hexagon,
circle, diamond, and square.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/maps/demo/circlemap-africa : Circular tile shapes
https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/maps/demo/diamondmap : Diamond tile shapes
*/
@property(nonatomic, readwrite) NSString *tileShape;
/**
* description: The color applied to null points. In styled mode, a general CSS class is
applied instead.
*/
@property(nonatomic, readwrite) HIColor *nullColor;

-(NSDictionary *)getParams;

@end
