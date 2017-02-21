#import "PlotOptionsTreemapHIPointEvents.h"


/**
* description: Properties for each single point
*/
@interface PlotOptionsTreemapHIPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) PlotOptionsTreemapHIPointEvents *events;

-(NSDictionary *)getParams;

@end
