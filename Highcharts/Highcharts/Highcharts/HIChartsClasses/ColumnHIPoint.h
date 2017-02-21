#import "ColumnHIPointEvents.h"


/**
* description: Properties for each single point
*/
@interface ColumnHIPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) ColumnHIPointEvents *events;

-(NSDictionary *)getParams;

@end
