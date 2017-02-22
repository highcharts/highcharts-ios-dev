#import "HIPlotOptionsTreemapPointEvents.h"


/**
* description: Properties for each single point
*/
@interface HIPlotOptionsTreemapPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) HIPlotOptionsTreemapPointEvents *events;

-(NSDictionary *)getParams;

@end
