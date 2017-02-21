#import "AreaHIPointEvents.h"


/**
* description: Properties for each single point
*/
@interface AreaHIPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) AreaHIPointEvents *events;

-(NSDictionary *)getParams;

@end
