#import "PlotOptionsPolygonHIPointEvents.h"


/**
* description: Properties for each single point
*/
@interface PlotOptionsPolygonHIPoint: HIChartsJSONSerializable

/**
* description: Events for each single point
*/
@property(nonatomic, readwrite) PlotOptionsPolygonHIPointEvents *events;

-(NSDictionary *)getParams;

@end
