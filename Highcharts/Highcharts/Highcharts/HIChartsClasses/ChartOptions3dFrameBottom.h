#import "HIChartsJSONSerializable.h"
#import "HexColor.h"


/**
* description: The bottom of the frame around a 3D chart.
*/
@interface ChartOptions3dFrameBottom: HIChartsJSONSerializable

/**
* description: The thickness of the panel.
*/
@property(nonatomic, readwrite) NSNumber *size;
/**
* description: The color of the panel.
*/
@property(nonatomic, readwrite) HexColor *color;

-(NSDictionary *)getParams;

@end
