#import "PlotOptionsSolidgaugeHIPointEvents.h"


/**
* description: Properties for each single point
*/
@interface PlotOptionsSolidgaugeHIPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) PlotOptionsSolidgaugeHIPointEvents *events;

-(NSDictionary *)getParams;

@end
