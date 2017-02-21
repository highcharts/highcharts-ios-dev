#import "PlotOptionsErrorbarHIPointEvents.h"


/**
* description: Properties for each single point
*/
@interface PlotOptionsErrorbarHIPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) PlotOptionsErrorbarHIPointEvents *events;

-(NSDictionary *)getParams;

@end
