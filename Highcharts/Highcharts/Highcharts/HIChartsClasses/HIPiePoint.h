#import "HIPiePointEvents.h"


/**
* description: Properties for each single point
*/
@interface HIPiePoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) HIPiePointEvents *events;

-(NSDictionary *)getParams;

@end
