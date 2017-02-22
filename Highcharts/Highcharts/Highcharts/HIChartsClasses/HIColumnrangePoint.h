#import "HIColumnrangePointEvents.h"


/**
* description: Properties for each single point
*/
@interface HIColumnrangePoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) HIColumnrangePointEvents *events;

-(NSDictionary *)getParams;

@end
