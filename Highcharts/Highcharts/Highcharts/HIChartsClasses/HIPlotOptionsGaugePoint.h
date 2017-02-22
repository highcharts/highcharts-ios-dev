#import "HIPlotOptionsGaugePointEvents.h"


/**
* description: Properties for each single point
*/
@interface HIPlotOptionsGaugePoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) HIPlotOptionsGaugePointEvents *events;

-(NSDictionary *)getParams;

@end
