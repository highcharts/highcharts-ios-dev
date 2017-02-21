#import "PlotOptionsLineHIPointEvents.h"


/**
* description: Properties for each single point
*/
@interface PlotOptionsLineHIPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) PlotOptionsLineHIPointEvents *events;

-(NSDictionary *)getParams;

@end
