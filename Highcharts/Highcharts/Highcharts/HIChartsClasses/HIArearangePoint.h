#import "HIArearangePointEvents.h"


/**
* description: Properties for each single point
*/
@interface HIArearangePoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) HIArearangePointEvents *events;

-(NSDictionary *)getParams;

@end
