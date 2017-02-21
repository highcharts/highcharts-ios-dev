#import "ErrorbarHIPointEvents.h"


/**
* description: Properties for each single point
*/
@interface ErrorbarHIPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) ErrorbarHIPointEvents *events;

-(NSDictionary *)getParams;

@end
