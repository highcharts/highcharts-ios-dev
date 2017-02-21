#import "AreasplinerangeHIPointEvents.h"


/**
* description: Properties for each single point
*/
@interface AreasplinerangeHIPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) AreasplinerangeHIPointEvents *events;

-(NSDictionary *)getParams;

@end
