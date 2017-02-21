#import "PlotOptionsAreaHIPointEvents.h"


/**
* description: Properties for each single point
*/
@interface PlotOptionsAreaHIPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) PlotOptionsAreaHIPointEvents *events;

-(NSDictionary *)getParams;

@end
