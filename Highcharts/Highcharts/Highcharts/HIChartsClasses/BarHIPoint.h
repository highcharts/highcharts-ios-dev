#import "BarHIPointEvents.h"


/**
* description: Properties for each single point
*/
@interface BarHIPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) BarHIPointEvents *events;

-(NSDictionary *)getParams;

@end
