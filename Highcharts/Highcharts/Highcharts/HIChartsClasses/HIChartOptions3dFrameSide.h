#import "HIChartsJSONSerializable.h"
#import "HIHexColor.h"


/**
* description: The side for the frame around a 3D chart.
*/
@interface HIChartOptions3dFrameSide: HIChartsJSONSerializable

/**
* description: The color of the panel.
*/
@property(nonatomic, readwrite) HIHexColor *color;
/**
* description: The thickness of the panel.
*/
@property(nonatomic, readwrite) NSNumber *size;

-(NSDictionary *)getParams;

@end
