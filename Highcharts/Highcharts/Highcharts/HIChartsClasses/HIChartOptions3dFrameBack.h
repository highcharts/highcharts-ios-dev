#import "HIChartsJSONSerializable.h"
#import "HIHexColor.h"


/**
* description: Defines the back panel of the frame around 3D charts.
*/
@interface HIChartOptions3dFrameBack: HIChartsJSONSerializable

/**
* description: The color of the panel.
*/
@property(nonatomic, readwrite) HIHexColor *color;
/**
* description: Thickness of the panel.
*/
@property(nonatomic, readwrite) NSNumber *size;

-(NSDictionary *)getParams;

@end
