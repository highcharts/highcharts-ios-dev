#import "HILinePointEvents.h"


/**
* description: Properties for each single point
*/
@interface HILinePoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) HILinePointEvents *events;

-(NSDictionary *)getParams;

@end
