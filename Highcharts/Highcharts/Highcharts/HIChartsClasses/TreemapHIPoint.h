#import "TreemapHIPointEvents.h"


/**
* description: Properties for each single point
*/
@interface TreemapHIPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) TreemapHIPointEvents *events;

-(NSDictionary *)getParams;

@end
