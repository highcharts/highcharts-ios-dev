#import "FunnelHIPointEvents.h"


/**
* description: Properties for each single point
*/
@interface FunnelHIPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) FunnelHIPointEvents *events;

-(NSDictionary *)getParams;

@end
