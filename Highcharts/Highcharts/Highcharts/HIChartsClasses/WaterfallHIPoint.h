#import "WaterfallHIPointEvents.h"


/**
* description: Properties for each single point
*/
@interface WaterfallHIPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) WaterfallHIPointEvents *events;

-(NSDictionary *)getParams;

@end
