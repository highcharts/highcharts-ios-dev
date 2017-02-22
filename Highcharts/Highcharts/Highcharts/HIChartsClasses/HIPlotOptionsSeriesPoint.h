#import "HIPlotOptionsSeriesPointEvents.h"


/**
* description: Properties for each single point
*/
@interface HIPlotOptionsSeriesPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) HIPlotOptionsSeriesPointEvents *events;

-(NSDictionary *)getParams;

@end
