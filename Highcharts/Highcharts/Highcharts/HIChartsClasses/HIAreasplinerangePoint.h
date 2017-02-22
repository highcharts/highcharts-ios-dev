#import "HIAreasplinerangePointEvents.h"


/**
* description: Properties for each single point
*/
@interface HIAreasplinerangePoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) HIAreasplinerangePointEvents *events;

-(NSDictionary *)getParams;

@end
