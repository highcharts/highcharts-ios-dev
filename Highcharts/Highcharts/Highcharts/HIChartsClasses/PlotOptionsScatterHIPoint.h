#import "PlotOptionsScatterHIPointEvents.h"


/**
* description: Properties for each single point
*/
@interface PlotOptionsScatterHIPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) PlotOptionsScatterHIPointEvents *events;

-(NSDictionary *)getParams;

@end
