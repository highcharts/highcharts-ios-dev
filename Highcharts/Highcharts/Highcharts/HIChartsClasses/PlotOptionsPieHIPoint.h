#import "PlotOptionsPieHIPointEvents.h"


/**
* description: Properties for each single point
*/
@interface PlotOptionsPieHIPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) PlotOptionsPieHIPointEvents *events;

-(NSDictionary *)getParams;

@end
