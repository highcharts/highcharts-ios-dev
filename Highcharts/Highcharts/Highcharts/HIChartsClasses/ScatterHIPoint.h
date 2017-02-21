#import "ScatterHIPointEvents.h"


/**
* description: Properties for each single point
*/
@interface ScatterHIPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) ScatterHIPointEvents *events;

-(NSDictionary *)getParams;

@end
