#import "HIHeatmapPointEvents.h"


/**
* description: Properties for each single point
*/
@interface HIHeatmapPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) HIHeatmapPointEvents *events;

-(NSDictionary *)getParams;

@end
