#import "PlotOptionsWaterfallHIPointEvents.h"


/**
* description: Properties for each single point
*/
@interface PlotOptionsWaterfallHIPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) PlotOptionsWaterfallHIPointEvents *events;

-(NSDictionary *)getParams;

@end
