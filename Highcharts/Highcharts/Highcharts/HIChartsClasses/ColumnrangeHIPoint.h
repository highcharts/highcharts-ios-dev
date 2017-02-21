#import "ColumnrangeHIPointEvents.h"


/**
* description: Properties for each single point
*/
@interface ColumnrangeHIPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) ColumnrangeHIPointEvents *events;

-(NSDictionary *)getParams;

@end
