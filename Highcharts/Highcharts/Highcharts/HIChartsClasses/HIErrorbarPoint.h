#import "HIErrorbarPointEvents.h"


/**
* description: Properties for each single point
*/
@interface HIErrorbarPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) HIErrorbarPointEvents *events;

-(NSDictionary *)getParams;

@end
