#import "HIPlotOptionsBarPointEvents.h"


/**
* description: Properties for each single point
*/
@interface HIPlotOptionsBarPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) HIPlotOptionsBarPointEvents *events;

-(NSDictionary *)getParams;

@end
