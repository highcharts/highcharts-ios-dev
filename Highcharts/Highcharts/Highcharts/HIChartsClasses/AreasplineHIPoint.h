#import "AreasplineHIPointEvents.h"


/**
* description: Properties for each single point
*/
@interface AreasplineHIPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) AreasplineHIPointEvents *events;

-(NSDictionary *)getParams;

@end
