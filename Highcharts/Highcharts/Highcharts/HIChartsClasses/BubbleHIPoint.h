#import "BubbleHIPointEvents.h"


/**
* description: Properties for each single point
*/
@interface BubbleHIPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) BubbleHIPointEvents *events;

-(NSDictionary *)getParams;

@end
