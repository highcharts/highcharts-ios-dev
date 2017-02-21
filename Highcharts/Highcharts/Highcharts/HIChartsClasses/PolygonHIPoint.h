#import "PolygonHIPointEvents.h"


/**
* description: Properties for each single point
*/
@interface PolygonHIPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) PolygonHIPointEvents *events;

-(NSDictionary *)getParams;

@end
