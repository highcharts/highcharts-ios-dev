#import "HIBubblePointEvents.h"


/**
* description: Properties for each single point
*/
@interface HIBubblePoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) HIBubblePointEvents *events;

-(NSDictionary *)getParams;

@end
