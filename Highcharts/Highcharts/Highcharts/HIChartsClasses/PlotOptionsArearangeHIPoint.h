#import "PlotOptionsArearangeHIPointEvents.h"


/**
* description: Properties for each single point
*/
@interface PlotOptionsArearangeHIPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) PlotOptionsArearangeHIPointEvents *events;

-(NSDictionary *)getParams;

@end
