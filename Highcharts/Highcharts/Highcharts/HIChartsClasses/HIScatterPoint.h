#import "HIScatterPointEvents.h"


/**
* description: Properties for each single point
*/
@interface HIScatterPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) HIScatterPointEvents *events;

-(NSDictionary *)getParams;

@end
