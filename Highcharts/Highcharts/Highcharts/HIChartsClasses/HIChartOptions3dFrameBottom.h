#import "HIChartsJSONSerializable.h"
#import "HIHexColor.h"


/**
* description: The bottom of the frame around a 3D chart.
*/
@interface HIChartOptions3dFrameBottom: HIChartsJSONSerializable

/**
* description: The thickness of the panel.
*/
@property(nonatomic, readwrite) NSNumber *size;
/**
* description: The color of the panel.
*/
@property(nonatomic, readwrite) HIHexColor *color;

-(NSDictionary *)getParams;

@end
