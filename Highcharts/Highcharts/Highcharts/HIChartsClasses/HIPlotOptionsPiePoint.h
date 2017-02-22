#import "HIPlotOptionsPiePointEvents.h"


/**
* description: Properties for each single point
*/
@interface HIPlotOptionsPiePoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) HIPlotOptionsPiePointEvents *events;

-(NSDictionary *)getParams;

@end
