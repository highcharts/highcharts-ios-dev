#import "SplineHIPointEvents.h"


/**
* description: Properties for each single point
*/
@interface SplineHIPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) SplineHIPointEvents *events;

-(NSDictionary *)getParams;

@end
