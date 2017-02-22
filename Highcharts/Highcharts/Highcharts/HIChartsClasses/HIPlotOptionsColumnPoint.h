#import "HIPlotOptionsColumnPointEvents.h"


/**
* description: Properties for each single point
*/
@interface HIPlotOptionsColumnPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) HIPlotOptionsColumnPointEvents *events;

-(NSDictionary *)getParams;

@end
