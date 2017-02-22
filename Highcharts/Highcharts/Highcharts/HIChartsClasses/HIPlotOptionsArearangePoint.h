#import "HIPlotOptionsArearangePointEvents.h"


/**
* description: Properties for each single point
*/
@interface HIPlotOptionsArearangePoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) HIPlotOptionsArearangePointEvents *events;

-(NSDictionary *)getParams;

@end
