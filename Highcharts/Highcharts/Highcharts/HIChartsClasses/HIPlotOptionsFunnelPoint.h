#import "HIPlotOptionsFunnelPointEvents.h"


/**
* description: Properties for each single point
*/
@interface HIPlotOptionsFunnelPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) HIPlotOptionsFunnelPointEvents *events;

-(NSDictionary *)getParams;

@end
