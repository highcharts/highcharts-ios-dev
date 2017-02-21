#import "PlotOptionsColumnHIPointEvents.h"


/**
* description: Properties for each single point
*/
@interface PlotOptionsColumnHIPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) PlotOptionsColumnHIPointEvents *events;

-(NSDictionary *)getParams;

@end
