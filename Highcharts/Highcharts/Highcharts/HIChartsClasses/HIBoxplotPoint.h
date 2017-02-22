#import "HIBoxplotPointEvents.h"


/**
* description: Properties for each single point
*/
@interface HIBoxplotPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) HIBoxplotPointEvents *events;

-(NSDictionary *)getParams;

@end
