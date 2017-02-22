#import "HIPlotOptionsBoxplotPointEvents.h"


/**
* description: Properties for each single point
*/
@interface HIPlotOptionsBoxplotPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) HIPlotOptionsBoxplotPointEvents *events;

-(NSDictionary *)getParams;

@end
