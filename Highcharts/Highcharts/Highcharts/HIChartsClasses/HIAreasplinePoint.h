#import "HIAreasplinePointEvents.h"


/**
* description: Properties for each single point
*/
@interface HIAreasplinePoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) HIAreasplinePointEvents *events;

-(NSDictionary *)getParams;

@end
