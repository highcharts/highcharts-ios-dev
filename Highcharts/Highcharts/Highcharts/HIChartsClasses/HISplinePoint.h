#import "HISplinePointEvents.h"


/**
* description: Properties for each single point
*/
@interface HISplinePoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) HISplinePointEvents *events;

-(NSDictionary *)getParams;

@end
