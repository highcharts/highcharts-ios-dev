#import "HIPolygonPointEvents.h"


/**
* description: Properties for each single point
*/
@interface HIPolygonPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) HIPolygonPointEvents *events;

-(NSDictionary *)getParams;

@end
