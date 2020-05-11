/**
 * (c) 2009-2020 Highsoft AS
 *
 * License: www.highcharts.com/license
 * For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
 * In case of questions, please contact sales@highsoft.com
 */

#import <Foundation/Foundation.h>
#import "HIChartsJSONSerializable.h"


@interface HIChartsJSONSerializable ()
@property (nonatomic, assign) NSString *uuid;
@property (nonatomic, assign) NSDictionary *jsClassMethod;
-(NSDictionary *)getParams;
-(void)updateHIObject:(HIChartsJSONSerializable *)oldValue newValue:(HIChartsJSONSerializable *)newValue propertyName:(NSString *)propertyName;
-(void)updateNSObject:(NSObject *)oldValue newValue:(NSObject *)newValue propertyName:(NSString *)propertyName;
-(void)updateArrayObject:(NSArray<NSObject *> *)oldValue newValue:(NSArray<NSObject *> *)newValue propertyName:(NSString *)propertyName;
@end

