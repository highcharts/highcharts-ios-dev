#import "HIPlotOptionsErrorbarPointEvents.h"


/**
* description: Properties for each single point
*/
@interface HIPlotOptionsErrorbarPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) HIPlotOptionsErrorbarPointEvents *events;

-(NSDictionary *)getParams;

@end
