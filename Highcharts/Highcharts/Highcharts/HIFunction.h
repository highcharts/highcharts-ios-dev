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

/**
 *  Definition of Objective-C/Swift closure.
 */
typedef void (^ HIClosure)(HIChartContext *);

/**
 *  A string representation of JS function.
 */
@property(nonatomic, readwrite) NSString *jsFunction;

/**
 *  An Objective-C/Swift closure.
 */
@property (nonatomic) HIClosure closure;

/**
 *  An array of properties that will be available to get from the chart context.
 */
@property (nonatomic, strong) NSArray<NSString *> *properties;

/**
 *  Init with the string representation of JS function.
 */
- (instancetype)initWithJSFunction:(NSString *) jsFunction;

/**
 *  Init with the Objective-C/Swift closure.
 */
- (instancetype)initWithClosure:(HIClosure)closure;

/**
 *  Init with the Objective-C/Swift closure and array of properties that will be available to get from the chart context.
 */
- (instancetype)initWithClosure:(HIClosure)closure properties:(NSArray<NSString *> *)properties;

-(id)getFunction;

@end
