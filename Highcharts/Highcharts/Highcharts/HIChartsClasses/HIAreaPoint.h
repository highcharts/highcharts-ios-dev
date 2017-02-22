#import "HIAreaPointEvents.h"


/**
* description: Properties for each single point
*/
@interface HIAreaPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) HIAreaPointEvents *events;

-(NSDictionary *)getParams;

@end
