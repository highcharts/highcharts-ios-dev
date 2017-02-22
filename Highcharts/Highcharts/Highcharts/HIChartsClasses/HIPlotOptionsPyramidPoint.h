#import "HIPlotOptionsPyramidPointEvents.h"


/**
* description: Properties for each single point
*/
@interface HIPlotOptionsPyramidPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) HIPlotOptionsPyramidPointEvents *events;

-(NSDictionary *)getParams;

@end
