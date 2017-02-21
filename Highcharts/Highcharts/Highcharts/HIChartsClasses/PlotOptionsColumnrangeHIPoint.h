#import "PlotOptionsColumnrangeHIPointEvents.h"


/**
* description: Properties for each single point
*/
@interface PlotOptionsColumnrangeHIPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) PlotOptionsColumnrangeHIPointEvents *events;

-(NSDictionary *)getParams;

@end
