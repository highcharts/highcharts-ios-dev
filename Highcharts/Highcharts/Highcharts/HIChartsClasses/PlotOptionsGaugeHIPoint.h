#import "PlotOptionsGaugeHIPointEvents.h"


/**
* description: Properties for each single point
*/
@interface PlotOptionsGaugeHIPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) PlotOptionsGaugeHIPointEvents *events;

-(NSDictionary *)getParams;

@end
