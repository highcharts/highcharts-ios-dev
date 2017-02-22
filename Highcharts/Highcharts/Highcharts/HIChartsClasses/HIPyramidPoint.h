#import "HIPyramidPointEvents.h"


/**
* description: Properties for each single point
*/
@interface HIPyramidPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) HIPyramidPointEvents *events;

-(NSDictionary *)getParams;

@end
