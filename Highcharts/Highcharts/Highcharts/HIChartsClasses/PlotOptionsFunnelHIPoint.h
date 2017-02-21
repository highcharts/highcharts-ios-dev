#import "PlotOptionsFunnelHIPointEvents.h"


/**
* description: Properties for each single point
*/
@interface PlotOptionsFunnelHIPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) PlotOptionsFunnelHIPointEvents *events;

-(NSDictionary *)getParams;

@end
