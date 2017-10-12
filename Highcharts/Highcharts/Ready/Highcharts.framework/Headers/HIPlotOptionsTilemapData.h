/**
* (c) 2009-2017 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HIChartsJSONSerializable.h"
#import "HIColor.h"


@interface HIPlotOptionsTilemapData: HIChartsJSONSerializable

/**
* description: The color of the point. In tilemaps the point color is rarely set
explicitly, as we use the color to denote the value. Options for
this are set in the colorAxis configuration.
*/
@property(nonatomic, readwrite) HIColor *color;
/**
* description: The y coordinate of the point.
Note that for some tileShapes the grid
coordinates are offset.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/maps/series/tilemap-gridoffset : Offset grid coordinates
* default: undefined
*/
@property(nonatomic, readwrite) NSNumber *y;
/**
* description: The x coordinate of the point.
Note that for some tileShapes the grid
coordinates are offset.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/maps/series/tilemap-gridoffset : Offset grid coordinates
*/
@property(nonatomic, readwrite) NSNumber *x;

-(NSDictionary *)getParams;

@end
