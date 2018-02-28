/**
* (c) 2009-2018 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HIColorVariation.h"
#import "HIColor.h"


/**
* description: Set options on specific levels. Takes precedence over series options,
but not point options.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/demo/sunburst : Sunburst chart
*/
@interface HILevels: HIChartsJSONSerializable

/**
* description: Can set a borderColor on all points which lies on the same level.
*/
@property(nonatomic, readwrite) HIColor *borderColor;
/**
* description: Can set a colorVariation on all points which lies on the same level.
*/
@property(nonatomic, readwrite) HIColorVariation *colorVariation;
/**
* description: Can set a levelSize on all points which lies on the same level.
*/
@property(nonatomic, readwrite) id levelSize;
/**
* description: Can set a borderDashStyle on all points which lies on the same level.
*/
@property(nonatomic, readwrite) NSString *borderDashStyle;
/**
* description: Can set a color on all points which lies on the same level.
*/
@property(nonatomic, readwrite) HIColor *color;
/**
* description: Can set a dataLabels on all points which lies on the same level.
*/
@property(nonatomic, readwrite) id dataLabels;
/**
* description: Can set a rotationMode on all points which lies on the same level.
*/
@property(nonatomic, readwrite) NSString *rotationMode;
/**
* description: Can set a borderWidth on all points which lies on the same level.
*/
@property(nonatomic, readwrite) NSNumber *borderWidth;
/**
* description: Can set a rotation on all points which lies on the same level.
*/
@property(nonatomic, readwrite) NSNumber *rotation;
/**
* description: Decides which level takes effect from the options set in the levels
object.
* demo: https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/treemap-levels/ : Styling of both levels
*/
@property(nonatomic, readwrite) NSNumber *level;
/**
* description: Can set the layoutAlgorithm option on a specific level.
* accepted values: ["sliceAndDice", "stripes", "squarified", "strip"]
*/
@property(nonatomic, readwrite) NSString *layoutAlgorithm;
/**
* description: Can set the layoutStartingDirection option on a specific level.
* accepted values: ["vertical", "horizontal"]
*/
@property(nonatomic, readwrite) NSString *layoutStartingDirection;

-(NSDictionary *)getParams;

@end
