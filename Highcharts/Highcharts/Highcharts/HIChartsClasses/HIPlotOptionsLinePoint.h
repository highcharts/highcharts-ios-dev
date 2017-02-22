#import "HIPlotOptionsLinePointEvents.h"


/**
* description: Properties for each single point
*/
@interface HIPlotOptionsLinePoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) HIPlotOptionsLinePointEvents *events;

-(NSDictionary *)getParams;

@end
