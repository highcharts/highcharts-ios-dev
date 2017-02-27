#import "HIChartsJSONSerializable.h"
#import "HIColor.h"


/**
* description: The side for the frame around a 3D chart.
*/
@interface HIChartOptions3dFrameSide: HIChartsJSONSerializable

/**
* description: The color of the panel.
*/
@property(nonatomic, readwrite) HIColor *color;
/**
* description: The thickness of the panel.
*/
@property(nonatomic, readwrite) NSNumber *size;

-(NSDictionary *)getParams;

@end
