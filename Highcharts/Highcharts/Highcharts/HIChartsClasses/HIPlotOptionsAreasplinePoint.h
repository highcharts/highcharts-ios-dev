#import "HIPlotOptionsAreasplinePointEvents.h"


/**
* description: Properties for each single point
*/
@interface HIPlotOptionsAreasplinePoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) HIPlotOptionsAreasplinePointEvents *events;

-(NSDictionary *)getParams;

@end
