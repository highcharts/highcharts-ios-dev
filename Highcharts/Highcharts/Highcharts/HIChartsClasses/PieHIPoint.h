#import "PieHIPointEvents.h"


/**
* description: Properties for each single point
*/
@interface PieHIPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) PieHIPointEvents *events;

-(NSDictionary *)getParams;

@end
