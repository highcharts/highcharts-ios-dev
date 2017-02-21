#import "PlotOptionsBubbleHIPointEvents.h"


/**
* description: Properties for each single point
*/
@interface PlotOptionsBubbleHIPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) PlotOptionsBubbleHIPointEvents *events;

-(NSDictionary *)getParams;

@end
