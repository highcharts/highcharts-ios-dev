#import "HIPlotOptionsHeatmapPointEvents.h"


/**
* description: Properties for each single point
*/
@interface HIPlotOptionsHeatmapPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) HIPlotOptionsHeatmapPointEvents *events;

-(NSDictionary *)getParams;

@end
