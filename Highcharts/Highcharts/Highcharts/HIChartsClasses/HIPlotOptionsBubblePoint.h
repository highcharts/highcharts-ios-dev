#import "HIPlotOptionsBubblePointEvents.h"


/**
* description: Properties for each single point
*/
@interface HIPlotOptionsBubblePoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) HIPlotOptionsBubblePointEvents *events;

-(NSDictionary *)getParams;

@end
