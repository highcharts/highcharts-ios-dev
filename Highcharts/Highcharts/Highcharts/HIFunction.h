/**
 * (c) 2009-2018 Highsoft AS
 *
 * License: www.highcharts.com/license
 * For commercial usage, a valid license is required. To purchase a license for Highcharts iOS, please see our website: https://shop.highsoft.com/
 * In case of questions, please contact sales@highsoft.com
 */

#import <Foundation/Foundation.h>
#import "HIChartsJSONSerializable.h"
#import "HIChartContext.h"

@interface HIFunction : HIChartsJSONSerializable

typedef void (^ HIClosure)(HIChartContext *);

@property(nonatomic, readwrite) NSString *jsFunction;
@property (nonatomic) HIClosure closure;
@property (nonatomic, strong) NSArray<NSString *> *properties;

/**
 * Init with function's string representation
 */
- (instancetype)initWithJSFunction:(NSString *) jsFunction;

- (instancetype)initWithClosure:(HIClosure)closure;

- (instancetype)initWithClosure:(HIClosure)closure properties:(NSArray<NSString *> *)properties;

-(id)getFunction;

@end
