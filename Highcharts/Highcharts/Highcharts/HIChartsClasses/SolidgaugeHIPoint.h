#import "SolidgaugeHIPointEvents.h"


/**
* description: Properties for each single point
*/
@interface SolidgaugeHIPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) SolidgaugeHIPointEvents *events;

-(NSDictionary *)getParams;

@end
