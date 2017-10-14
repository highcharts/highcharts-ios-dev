/**
* (c) 2009-2017 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HIPlotOptionsSunburstLevelsColorVariation.h"


/**
* description: Set options on specific levels. Takes precedence over series options,
but not point options.

* demo: https://jsfiddle.net/gh/library/pure/highcharts/highcharts/tree/master/samples/highcharts/demo/sunburst : Sunburst chart
*/
@interface HIPlotOptionsSunburstLevels: HIChartsJSONSerializable

/**
* description: Can set a borderColor on all points which lies on the same level.
*/
@property(nonatomic, readwrite) NSString *borderColor;
/**
* description: Can set a rotation on all points which lies on the same level.
*/
@property(nonatomic, readwrite) NSNumber *rotation;
/**
* description: Can set a colorVariation on all points which lies on the same level.
*/
@property(nonatomic, readwrite) HIPlotOptionsSunburstLevelsColorVariation *colorVariation;
/**
* description: Can set a borderDashStyle on all points which lies on the same level.
*/
@property(nonatomic, readwrite) NSString *borderDashStyle;
/**
* description: Can set a borderWidth on all points which lies on the same level.
*/
@property(nonatomic, readwrite) NSString *borderWidth;
/**
* description: Can set a rotationMode on all points which lies on the same level.
*/
@property(nonatomic, readwrite) NSString *rotationMode;
/**
* description: Can set a color on all points which lies on the same level.
*/
@property(nonatomic, readwrite) NSString *color;
/**
* description: Can set a dataLabels on all points which lies on the same level.
*/
@property(nonatomic, readwrite) id dataLabels;

-(NSDictionary *)getParams;

@end
