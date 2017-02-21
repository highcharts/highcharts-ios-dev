#import "HIChartsJSONSerializable.h"
#import "HexColor.h"


/**
* description: The side for the frame around a 3D chart.
*/
@interface ChartOptions3dFrameSide: HIChartsJSONSerializable

/**
* description: The color of the panel.
*/
@property(nonatomic, readwrite) HexColor *color;
/**
* description: The thickness of the panel.
*/
@property(nonatomic, readwrite) NSNumber *size;

-(NSDictionary *)getParams;

@end
