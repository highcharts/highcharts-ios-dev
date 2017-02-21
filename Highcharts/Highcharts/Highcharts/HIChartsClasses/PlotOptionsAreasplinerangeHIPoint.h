#import "PlotOptionsAreasplinerangeHIPointEvents.h"


/**
* description: Properties for each single point
*/
@interface PlotOptionsAreasplinerangeHIPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) PlotOptionsAreasplinerangeHIPointEvents *events;

-(NSDictionary *)getParams;

@end
