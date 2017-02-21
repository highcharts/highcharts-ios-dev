#import "ArearangeHIPointEvents.h"


/**
* description: Properties for each single point
*/
@interface ArearangeHIPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) ArearangeHIPointEvents *events;

-(NSDictionary *)getParams;

@end
