#import "HIFunnelPointEvents.h"


/**
* description: Properties for each single point
*/
@interface HIFunnelPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) HIFunnelPointEvents *events;

-(NSDictionary *)getParams;

@end
