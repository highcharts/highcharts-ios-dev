#import "PlotOptionsHeatmapHIPointEvents.h"


/**
* description: Properties for each single point
*/
@interface PlotOptionsHeatmapHIPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) PlotOptionsHeatmapHIPointEvents *events;

-(NSDictionary *)getParams;

@end
