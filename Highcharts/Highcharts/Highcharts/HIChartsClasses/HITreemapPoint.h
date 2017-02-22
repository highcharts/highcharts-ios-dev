#import "HITreemapPointEvents.h"


/**
* description: Properties for each single point
*/
@interface HITreemapPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) HITreemapPointEvents *events;

-(NSDictionary *)getParams;

@end
