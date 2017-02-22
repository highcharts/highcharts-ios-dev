#import "HIGaugePointEvents.h"


/**
* description: Properties for each single point
*/
@interface HIGaugePoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) HIGaugePointEvents *events;

-(NSDictionary *)getParams;

@end
