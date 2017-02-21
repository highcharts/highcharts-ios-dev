#import "PlotOptionsAreasplineHIPointEvents.h"


/**
* description: Properties for each single point
*/
@interface PlotOptionsAreasplineHIPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) PlotOptionsAreasplineHIPointEvents *events;

-(NSDictionary *)getParams;

@end
