#import "HIPlotOptionsSplinePointEvents.h"


/**
* description: Properties for each single point
*/
@interface HIPlotOptionsSplinePoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) HIPlotOptionsSplinePointEvents *events;

-(NSDictionary *)getParams;

@end
