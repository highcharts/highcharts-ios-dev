#import "HIPlotOptionsAreasplinerangePointEvents.h"


/**
* description: Properties for each single point
*/
@interface HIPlotOptionsAreasplinerangePoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) HIPlotOptionsAreasplinerangePointEvents *events;

-(NSDictionary *)getParams;

@end
