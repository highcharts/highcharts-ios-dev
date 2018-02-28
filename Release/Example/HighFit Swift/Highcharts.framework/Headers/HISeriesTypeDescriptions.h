/**
* (c) 2009-2018 Highsoft AS
*
* License: www.highcharts.com/license
* For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
* In case of questions, please contact sales@highsoft.com
*/

#import "HIChartsJSONSerializable.h"


/**
* description: Descriptions of lesser known series types. The relevant
description is added to the screen reader information region
when these series types are used.
*/
@interface HISeriesTypeDescriptions: HIChartsJSONSerializable

@property(nonatomic, readwrite) id funnel;
@property(nonatomic, readwrite) id pyramid;
@property(nonatomic, readwrite) id columnrange;
@property(nonatomic, readwrite) id errorbar;
@property(nonatomic, readwrite) id areasplinerange;
@property(nonatomic, readwrite) id waterfall;
@property(nonatomic, readwrite) id arearange;
@property(nonatomic, readwrite) id bubble;
@property(nonatomic, readwrite) id boxplot;

-(NSDictionary *)getParams;

@end
