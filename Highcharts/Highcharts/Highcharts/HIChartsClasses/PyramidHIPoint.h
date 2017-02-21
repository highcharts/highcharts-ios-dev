#import "PyramidHIPointEvents.h"


/**
* description: Properties for each single point
*/
@interface PyramidHIPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) PyramidHIPointEvents *events;

-(NSDictionary *)getParams;

@end
