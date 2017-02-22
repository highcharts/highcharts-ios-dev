#import "HIPlotOptionsAreaPointEvents.h"


/**
* description: Properties for each single point
*/
@interface HIPlotOptionsAreaPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) HIPlotOptionsAreaPointEvents *events;

-(NSDictionary *)getParams;

@end
