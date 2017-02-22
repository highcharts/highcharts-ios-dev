#import "HIPlotOptionsWaterfallPointEvents.h"


/**
* description: Properties for each single point
*/
@interface HIPlotOptionsWaterfallPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) HIPlotOptionsWaterfallPointEvents *events;

-(NSDictionary *)getParams;

@end
