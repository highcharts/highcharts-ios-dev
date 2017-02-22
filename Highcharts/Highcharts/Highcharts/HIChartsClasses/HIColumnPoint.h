#import "HIColumnPointEvents.h"


/**
* description: Properties for each single point
*/
@interface HIColumnPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) HIColumnPointEvents *events;

-(NSDictionary *)getParams;

@end
