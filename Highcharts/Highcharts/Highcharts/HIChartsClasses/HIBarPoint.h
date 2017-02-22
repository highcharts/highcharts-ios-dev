#import "HIBarPointEvents.h"


/**
* description: Properties for each single point
*/
@interface HIBarPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) HIBarPointEvents *events;

-(NSDictionary *)getParams;

@end
