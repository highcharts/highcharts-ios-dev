#import "GaugeHIPointEvents.h"


/**
* description: Properties for each single point
*/
@interface GaugeHIPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) GaugeHIPointEvents *events;

-(NSDictionary *)getParams;

@end
