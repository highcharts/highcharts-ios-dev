#import "BoxplotHIPointEvents.h"


/**
* description: Properties for each single point
*/
@interface BoxplotHIPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) BoxplotHIPointEvents *events;

-(NSDictionary *)getParams;

@end
