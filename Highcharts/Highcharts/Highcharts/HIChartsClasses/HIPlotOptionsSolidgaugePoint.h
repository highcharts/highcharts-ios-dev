#import "HIPlotOptionsSolidgaugePointEvents.h"


/**
* description: Properties for each single point
*/
@interface HIPlotOptionsSolidgaugePoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) HIPlotOptionsSolidgaugePointEvents *events;

-(NSDictionary *)getParams;

@end
