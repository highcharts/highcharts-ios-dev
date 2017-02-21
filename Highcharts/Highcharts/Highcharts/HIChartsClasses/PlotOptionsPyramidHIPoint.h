#import "PlotOptionsPyramidHIPointEvents.h"


/**
* description: Properties for each single point
*/
@interface PlotOptionsPyramidHIPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) PlotOptionsPyramidHIPointEvents *events;

-(NSDictionary *)getParams;

@end
