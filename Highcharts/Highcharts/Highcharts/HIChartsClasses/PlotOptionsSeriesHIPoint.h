#import "PlotOptionsSeriesHIPointEvents.h"


/**
* description: Properties for each single point
*/
@interface PlotOptionsSeriesHIPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) PlotOptionsSeriesHIPointEvents *events;

-(NSDictionary *)getParams;

@end
