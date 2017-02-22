#import "HIPlotOptionsPolygonPointEvents.h"


/**
* description: Properties for each single point
*/
@interface HIPlotOptionsPolygonPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) HIPlotOptionsPolygonPointEvents *events;

-(NSDictionary *)getParams;

@end
