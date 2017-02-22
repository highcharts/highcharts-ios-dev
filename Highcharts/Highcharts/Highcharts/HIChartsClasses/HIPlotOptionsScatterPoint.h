#import "HIPlotOptionsScatterPointEvents.h"


/**
* description: Properties for each single point
*/
@interface HIPlotOptionsScatterPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) HIPlotOptionsScatterPointEvents *events;

-(NSDictionary *)getParams;

@end
