#import "HIWaterfallPointEvents.h"


/**
* description: Properties for each single point
*/
@interface HIWaterfallPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) HIWaterfallPointEvents *events;

-(NSDictionary *)getParams;

@end
