#import "PlotOptionsBoxplotHIPointEvents.h"


/**
* description: Properties for each single point
*/
@interface PlotOptionsBoxplotHIPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) PlotOptionsBoxplotHIPointEvents *events;

-(NSDictionary *)getParams;

@end
