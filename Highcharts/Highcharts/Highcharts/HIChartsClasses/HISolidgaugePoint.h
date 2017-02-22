#import "HISolidgaugePointEvents.h"


/**
* description: Properties for each single point
*/
@interface HISolidgaugePoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) HISolidgaugePointEvents *events;

-(NSDictionary *)getParams;

@end
