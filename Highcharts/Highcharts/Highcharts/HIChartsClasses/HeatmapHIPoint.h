#import "HeatmapHIPointEvents.h"


/**
* description: Properties for each single point
*/
@interface HeatmapHIPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) HeatmapHIPointEvents *events;

-(NSDictionary *)getParams;

@end
