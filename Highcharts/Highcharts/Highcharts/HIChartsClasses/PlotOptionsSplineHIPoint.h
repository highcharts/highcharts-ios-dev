#import "PlotOptionsSplineHIPointEvents.h"


/**
* description: Properties for each single point
*/
@interface PlotOptionsSplineHIPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) PlotOptionsSplineHIPointEvents *events;

-(NSDictionary *)getParams;

@end
