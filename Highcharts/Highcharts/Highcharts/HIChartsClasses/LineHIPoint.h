#import "LineHIPointEvents.h"


/**
* description: Properties for each single point
*/
@interface LineHIPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) LineHIPointEvents *events;

-(NSDictionary *)getParams;

@end
