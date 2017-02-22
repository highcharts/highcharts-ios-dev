#import "HIPlotOptionsColumnrangePointEvents.h"


/**
* description: Properties for each single point
*/
@interface HIPlotOptionsColumnrangePoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) HIPlotOptionsColumnrangePointEvents *events;

-(NSDictionary *)getParams;

@end
