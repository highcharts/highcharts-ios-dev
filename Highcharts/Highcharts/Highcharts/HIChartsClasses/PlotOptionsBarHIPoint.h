#import "PlotOptionsBarHIPointEvents.h"


/**
* description: Properties for each single point
*/
@interface PlotOptionsBarHIPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) PlotOptionsBarHIPointEvents *events;

-(NSDictionary *)getParams;

@end
